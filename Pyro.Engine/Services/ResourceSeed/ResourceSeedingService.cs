﻿using Hl7.Fhir.Model;
using Hl7.Fhir.Utility;
using Pyro.Common.CompositionRoot;
using Pyro.Common.Global;
using Pyro.Common.Interfaces.Repositories;
using Pyro.Common.Interfaces.Service;
using Pyro.Common.Logging;
using Pyro.Common.PyroHealthFhirResource;
using Pyro.Common.Service.ResourceService;
using Pyro.Common.Service.Trigger;
using Pyro.Common.ServiceRoot;
using System;
using System.Collections.Generic;
using System.Data.Entity;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace Pyro.Engine.Services.ResourceSeed
{
  public class ResourceSeedingService : IResourceSeedingService
  {
    private readonly IUnitOfWork IUnitOfWork;
    private readonly IResourceServices IResourceServices;
    private readonly IRequestMetaFactory IRequestMetaFactory;
    private readonly IResourceTriggerService IResourceTriggerService;
    private readonly IGlobalProperties IGlobalProperties;
    private readonly IRequestServiceRootValidate IRequestServiceRootValidate;
    private readonly ILog ILog;
    private readonly IPyroFhirResource IPyroFhirResource;

    public ResourceSeedingService(IUnitOfWork IUnitOfWork, IResourceServices IResourceServices, IRequestMetaFactory IRequestMetaFactory, IResourceTriggerService IResourceTriggerService, IGlobalProperties IGlobalProperties, IRequestServiceRootValidate IRequestServiceRootValidate, ILog ILog, IPyroFhirResource IPyroFhirResource)
    {
      this.IUnitOfWork = IUnitOfWork;
      this.IResourceServices = IResourceServices;
      this.IRequestMetaFactory = IRequestMetaFactory;
      this.IResourceTriggerService = IResourceTriggerService;
      this.IGlobalProperties = IGlobalProperties;
      this.IRequestServiceRootValidate = IRequestServiceRootValidate;
      this.ILog = ILog;
      this.IPyroFhirResource = IPyroFhirResource;
    }

    public void Process()
    {      
      var ResourceToCommit = ResolveResourcesToLoad(IPyroFhirResource.ResourceToLoadOnStartupList());
      if (ResourceToCommit.Count() > 0)
      {
        ILog.Info($"Server start-up: Resource seeding task, {ResourceToCommit.Count()} resources to be seeded.");
        CommitResourceList(ResourceToCommit);
      }        
      else
      {
        ILog.Info($"Server start-up: Resource seeding, no new reference FHIR resources to seed.");
      }
    }
    
    private IEnumerable<Resource> ResolveResourcesToLoad(IEnumerable<Resource> LoadList)
    {
      List<Resource> UpdatePUTList = new List<Resource>();
      foreach (Resource NewResource in LoadList)
      {
        string ResourceId = NewResource.Id;
        string ResourceName = NewResource.ResourceType.GetLiteral();

        //This is required for a clean install so that the ServiceBaseURL is set in the database before the next call is made, 
        //as the next call is the very first call to the FHIR API yet it uses a relative path which does not work is the database 
        //ServiceBaseURL ius not set.
        IRequestServiceRootValidate.Validate(IGlobalProperties.ServiceBaseURL);
        
        var RequestMeta = IRequestMetaFactory.CreateRequestMeta().Set($"{ResourceName}/{ResourceId}");

        using (DbContextTransaction Transaction = IUnitOfWork.BeginTransaction())
        {
          try
          {
            IResourceServiceOutcome GetResourceServiceOutcome = IResourceServices.GetRead(ResourceId, RequestMeta);
            if (GetResourceServiceOutcome.HttpStatusCode == System.Net.HttpStatusCode.NotFound || GetResourceServiceOutcome.HttpStatusCode == System.Net.HttpStatusCode.Gone)
            {
              //If the resource is not found in the database then add
              UpdatePUTList.Add(NewResource);
            }
            else if (GetResourceServiceOutcome.HttpStatusCode == System.Net.HttpStatusCode.OK && GetResourceServiceOutcome.ResourceResult != null)
            {
              //If the resource is newer than that is the database add
              DateTimeOffset? DbResourceLastUpdated = GetResourceServiceOutcome.ResourceResult.Meta.LastUpdated;
              if (NewResource.Meta.LastUpdated.HasValue && DbResourceLastUpdated.HasValue)
              {
                if (NewResource.Meta.LastUpdated.Value > DbResourceLastUpdated.Value)
                {
                  UpdatePUTList.Add(NewResource);
                }
              }
            }
            Transaction.Commit();
          }
          catch (Exception Exec)
          {
            Transaction.Rollback();
            ILog.Error(Exec, $"ResourceSeeding on Startup, failed to GET {ResourceName} with id of {ResourceId}");
          }
        }
      }
      return UpdatePUTList;
    }

    private void CommitResourceList(IEnumerable<Resource> CommitList)
    {      
      this.IResourceTriggerService.TriggersActive = false;
      using (DbContextTransaction Transaction = IUnitOfWork.BeginTransaction())
      {
        try
        {
          bool ErrorDetected = false;
          foreach(var NewResource in CommitList)
          {
            string ResourceId = NewResource.Id;
            string ResourceName = NewResource.ResourceType.GetLiteral();
            var RequestMeta = IRequestMetaFactory.CreateRequestMeta().Set($"{ResourceName}/{ResourceId}");
            IResourceServiceOutcome PutResourceServiceOutcome = IResourceServices.Put(ResourceId, NewResource, RequestMeta);
            if (PutResourceServiceOutcome.HttpStatusCode == System.Net.HttpStatusCode.Created)
            {
              ILog.Info($"    Resource seeding: Created `{ResourceName}` resource with id of `{ResourceId}`.");
            }
            else if (PutResourceServiceOutcome.HttpStatusCode == System.Net.HttpStatusCode.OK)
            {
              ILog.Info($"    Resource seeding: Updated '{ResourceName}' resource with id of '{ResourceId}'.");
            }
            else
            {
              Transaction.Rollback();
              ILog.Error($"ResourceSeeding on Start-up, failed to Create or Update the resource {ResourceName} with the id of {ResourceId}. The entire seeding operation has been rolled back.");
              ErrorDetected = true;
              break;
            }
          }
          if (!ErrorDetected)
            Transaction.Commit();
        }
        catch (Exception Exec)
        {
          Transaction.Rollback();
          ILog.Error(Exec, $"ResourceSeeding on Start-up, PUT operations failed with exception.");          
        }
        finally
        {          
          this.IResourceTriggerService.TriggersActive = true;
        }
      }
    }
    
  }
}
