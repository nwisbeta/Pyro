﻿using Hl7.Fhir.Model;
using Pyro.Common.Exceptions;
using Pyro.Common.ServiceRoot;
using Pyro.Common.Interfaces.Service;
using Pyro.Common.Tools;
using Pyro.Common.Logging;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace Pyro.Common.ServiceRoot
{
  public class RequestServiceRootValidate : IRequestServiceRootValidate
  {
    private readonly IPrimaryServiceRootCache IPrimaryServiceRootCache;
    private readonly IServicePrimaryBaseUrlService IServicePrimaryBaseUrlService;
    private readonly ILog ILog;
    public RequestServiceRootValidate(IPrimaryServiceRootCache IPrimaryServiceRootCache, IServicePrimaryBaseUrlService IServicePrimaryBaseUrlService, ILog ILog)
    {
      this.IPrimaryServiceRootCache = IPrimaryServiceRootCache;
      this.IServicePrimaryBaseUrlService = IServicePrimaryBaseUrlService;
      this.ILog = ILog;
    }

    public IDtoRootUrlStore Validate(string RequestServiceRoot)
    {
      string RequestRoot = RequestServiceRoot.ToLower();
      string ErrorMsg = "Error message not set in PrimaryServiceRootFactory";

      string WebConfigServiceBase = IPrimaryServiceRootCache.GetPrimaryRootUrlFromWebConfig().ToLower();
      IDtoRootUrlStore IDtoPrimaryRootUrlStore = IPrimaryServiceRootCache.GetPrimaryRootUrlStoreFromDatabase();

      if (IDtoPrimaryRootUrlStore != null &&
        RequestRoot.IsEqualUri(IDtoPrimaryRootUrlStore.Url) &&
        RequestRoot.IsEqualUri(WebConfigServiceBase))
      {
        //All checks a good return 
        return IDtoPrimaryRootUrlStore;
      }

      if (IDtoPrimaryRootUrlStore == null &&
        RequestRoot.IsEqualUri(WebConfigServiceBase))
      {
        //Clean install.
        //There is no primary in the database / Cache.
        //If the Web.Config ServiceBaseURL equals the incoming request Service Base URL 
        //Therefore set the database's primary service root URL, as this is a clean install.
        ILog.Info($"Server start-up: Clean install detected. As the first request's Service root is equal to the ServiceBaseURL found in the App_Data\\PyroApp.config this will be set in the database for future requests. ServiceBaseURL is : {IPrimaryServiceRootCache.GetPrimaryRootUrlFromWebConfig()} ");        
        IDtoRootUrlStore DtoRootUrlStore = IServicePrimaryBaseUrlService.SetPrimaryRootUrlStore(WebConfigServiceBase.StripHttp().ToLower());
        //Clear the cache as we just added the ServiceRoot to the database as the cache will have null cached.
        IPrimaryServiceRootCache.ClearPrimaryRootUrlFromCache();
        IPrimaryServiceRootCache.ClearPrimaryRootUrlStoreFromCache();
        return DtoRootUrlStore;
      }

      if (IDtoPrimaryRootUrlStore != null &&
        RequestRoot.IsEqualUri(WebConfigServiceBase) &&
        !RequestRoot.IsEqualUri(IDtoPrimaryRootUrlStore.Url))
      {
        //Web.Config Changed
        //The incoming request Service Base URL equals the Web.Config entry yet does not equal the Service Base URL
        //found in the database. We will assume someone knows what they are doing if they are capable of changing the Web.Config setting.
        //So update the database primary Service Base URL to match the Web.Config and request
        ILog.Info($"The incoming request's Service Base URL equals the App_Data\\PyroApp.config file entry 'ServiceBaseURL' yet does not equal the Primary Service Base URL found in the database. The server will assume someone knows what they are doing if they are capable of changing the App_Data\\PyroApp.config setting and will update the database primary Service Base URL to match the App_Data\\PyroApp.config and request. ");
        //Clear the cache as we just added the ServiceRoot to the database as the cache will have null cached.
        IPrimaryServiceRootCache.ClearPrimaryRootUrlFromCache();
        IPrimaryServiceRootCache.ClearPrimaryRootUrlStoreFromCache();
        IDtoRootUrlStore DtoRootUrlStore = IServicePrimaryBaseUrlService.SetPrimaryRootUrlStore(WebConfigServiceBase.StripHttp().ToLower());
        return DtoRootUrlStore;
      }

      if (IDtoPrimaryRootUrlStore == null &&
        !RequestRoot.IsEqualUri(WebConfigServiceBase))
      {
        //Clean Install yet request does not match Web.Config file
        //There is no primary in the database / Cache and the incoming request Service Base URL 
        //does not match that in the Web.Config file.
        //This is a configuration error.
        ErrorMsg = "The ServiceBaseURL configured in the Servers Web.Config does not match the service root URL found in the incoming request.";
        throw new PyroException(System.Net.HttpStatusCode.InternalServerError, Common.Tools.FhirOperationOutcomeSupport.Create(OperationOutcome.IssueSeverity.Fatal, OperationOutcome.IssueType.Exception, ErrorMsg), ErrorMsg);
      }

      if (IDtoPrimaryRootUrlStore != null &&
        (!RequestRoot.IsEqualUri(WebConfigServiceBase) ||
        !RequestRoot.IsEqualUri(IDtoPrimaryRootUrlStore.Url)))
      {
        //Existing server moved and Web.Config file not updated to match the move.
        //The incoming request Service Base URL does not equal the Web.Config entry or the Database
        //Warn the user about the ramifications of this change if they should seek to make the change to the Web.Config file 
        ErrorMsg =
          $"The incoming Http request had a service root URL of: '{RequestServiceRoot.StripHttp()}'. " +
          $"The server's database service root URL was '{IDtoPrimaryRootUrlStore.Url}'. " +
          $"The servers PyroApp.config file service root URL was '{WebConfigServiceBase.StripHttp()}'. " +
          "All three URLs must match for the server to continue! " +
          "This is most likely due to the server being move from it's original URL location, or the PyroApp.config value being incorrect. " +
          "You need to consider carefully the ramifications of or actions. you take next. " +
          "External systems may have absolute references to FHIR resources in this server " +
          "and changing the primary service root URL may render these external references invalid. " +
          "What can you do?. In the servers App_Data\\PyroApp.config appSetttings is a Key names 'ServiceBaseURL'. You can update this to " +
          $"the new service root URL in use. If you change this to equal '{RequestServiceRoot}' the server " +
          "will use this going forward as the service root URL for new resource. Yet all absolute references outside the database " +
          "will become invalid. " +
          "This change is not to be taken lightly and you should consider the ramifications carefully in the context of the " +
          "systems that interact with this service. ";
        throw new PyroException(System.Net.HttpStatusCode.InternalServerError, Common.Tools.FhirOperationOutcomeSupport.Create(OperationOutcome.IssueSeverity.Fatal, OperationOutcome.IssueType.Exception, ErrorMsg), ErrorMsg);
      }

      ErrorMsg = "Server Internal Error: Logic to resolve the Primary Service Root has failed. ";
      throw new PyroException(System.Net.HttpStatusCode.InternalServerError, Common.Tools.FhirOperationOutcomeSupport.Create(OperationOutcome.IssueSeverity.Fatal, OperationOutcome.IssueType.Exception, ErrorMsg), ErrorMsg);
    }

  }
}
