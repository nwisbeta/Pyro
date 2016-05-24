﻿using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;
using System.Net.Http;
using Hl7.Fhir.Model;
using Blaze.Engine.CustomException;
using System.Web.UI;
using System.IO;
using Blaze.Common.Interfaces;
using Blaze.Common.Interfaces.Services;
using Blaze.Common.Interfaces.Repositories;
using Blaze.Engine.Response;
using Blaze.Common.BusinessEntities.Dto;


namespace Blaze.Engine.Services
{
  /// <summary>
  /// This Class is here to handle any unique methods required for Patient resource beyond the basic REST operations.
  /// These might be FHIR operations on the resource such as '$expand' in the ValueSet Resource.
  /// </summary>
  public class PatientResourceServices : BaseResourceServices, IPatientResourceServices, IBaseResourceServices, ICommonServices, IBaseServices 
  {
    IResourceRepository Repository = null;

    //Constructor for dependency injection
    public PatientResourceServices(IUnitOfWork IUnitOfWork)
      : base(IUnitOfWork) 
    {
      Repository = _UnitOfWork.PatientRepository;
    }


    public override DtoEnums.SupportedFhirResource CurrentResourceType
    {
      get
      {
        return DtoEnums.SupportedFhirResource.Patient;
      }
    }

    // Get By id
    // GET URL/FhirApi/Patient/5    
    public override IBlazeServiceOperationOutcome Get(string FhirId)
    {
      var oBlazeServiceOperationOutcome = new Blaze.Engine.Response.BlazeServiceOperationOutcome();
      oBlazeServiceOperationOutcome.OperationType = DtoEnums.CrudOperationType.Read;
      oBlazeServiceOperationOutcome.DatabaseOperationOutcome = Repository.GetResourceByFhirID(FhirId);
      return oBlazeServiceOperationOutcome;      
    }

    // Add
    // POST: URL/FhirApi/Patient
    public override IBlazeServiceOperationOutcome Post(IBlazeServiceRequest BlazeServiceRequest)
    {

      var oBlazeServiceOperationOutcome = new Blaze.Engine.Response.BlazeServiceOperationOutcome();
      oBlazeServiceOperationOutcome.OperationType = DtoEnums.CrudOperationType.Create;

      //Validation of resource        
      Interfaces.IResourceValidation Validation = Blaze.Engine.Validation.ResourceValidationFactory.GetValidationInstance(CurrentResourceType);
      IResourceValidationOperationOutcome oResourceValidationOperationOutcome = Validation.Validate(BlazeServiceRequest.Resource);
      if (oResourceValidationOperationOutcome.HasError)
      {
        oBlazeServiceOperationOutcome.ResourceValidationOperationOutcome = oResourceValidationOperationOutcome;
        return oBlazeServiceOperationOutcome;
      }
     
      BlazeServiceRequest.Resource.Id = Guid.NewGuid().ToString();
      if (BlazeServiceRequest.Resource.Meta == null)
        BlazeServiceRequest.Resource.Meta = new Meta();
      int ResourceVersionNumber = 1;
      BlazeServiceRequest.Resource.Meta.VersionId = ResourceVersionNumber.ToString();
      BlazeServiceRequest.Resource.Meta.LastUpdated = DateTimeOffset.Now;

      oBlazeServiceOperationOutcome.FhirResourceId = Repository.AddResource(BlazeServiceRequest.Resource, BlazeServiceRequest.FhirRequestUri);
      oBlazeServiceOperationOutcome.LastModified = BlazeServiceRequest.Resource.Meta.LastUpdated;
      oBlazeServiceOperationOutcome.ResourceVersionNumber = ResourceVersionNumber;
      return oBlazeServiceOperationOutcome;
    }

    //Update
    // PUT: URL/FhirApi/Patient/5
    public override IBlazeServiceOperationOutcome Put(IBlazeServiceRequest BlazeServiceRequest)
    {
      var oBlazeServiceOperationOutcome = new Blaze.Engine.Response.BlazeServiceOperationOutcome();
      oBlazeServiceOperationOutcome.OperationType = DtoEnums.CrudOperationType.Update;
      //var FhirPatientResource = BlazeServiceRequest.Resource as Patient;
      if (String.IsNullOrWhiteSpace(BlazeServiceRequest.Resource.Id) || BlazeServiceRequest.Resource.Id != BlazeServiceRequest.ResourceId)
      {
        var oIssueComponent = new OperationOutcome.IssueComponent();
        oIssueComponent.Severity = OperationOutcome.IssueSeverity.Error;
        oIssueComponent.Code = OperationOutcome.IssueType.Required;
        oIssueComponent.Details = new CodeableConcept("http://hl7.org/fhir/operation-outcome", "MSG_INVALID_ID", String.Format("Id not accepted, type"));
        oIssueComponent.Details.Text = String.Format("The {0} resource id value in the resource must be provided and must match the id given in the URL for all PUT requests.\n The id in the resource was: '{1}' and the id in the URL was: '{2}'", CurrentResourceType.ToString(), FhirPatientResource.Id, BlazeServiceRequest.ResourceId);
        oIssueComponent.Diagnostics = oIssueComponent.Details.Text;
        var oOperationOutcome = new OperationOutcome();
        oOperationOutcome.Issue = new List<OperationOutcome.IssueComponent>() { oIssueComponent };
        oBlazeServiceOperationOutcome.ResourceValidationOperationOutcome = new Validation.ResourceValidationOperationOutcome();
        oBlazeServiceOperationOutcome.ResourceValidationOperationOutcome.FhirOperationOutcome = oOperationOutcome;
        oBlazeServiceOperationOutcome.ResourceValidationOperationOutcome.HttpStatusCode = System.Net.HttpStatusCode.BadRequest;
        return oBlazeServiceOperationOutcome;
      }

      IDatabaseOperationOutcome DatabaseOperationOutcome = Repository.GetResourceByFhirID(BlazeServiceRequest.ResourceId);
      if (DatabaseOperationOutcome.ResourceMatchingSearch != null)
      {
        //The resource has been found so update it and return 200 OK        
        if (BlazeServiceRequest.Resource.Meta == null)
          BlazeServiceRequest.Resource.Meta = new Meta();
        int NewResourceVersionNumber = DatabaseOperationOutcome.ResourceMatchingSearch.Version + 1;
        BlazeServiceRequest.Resource.Meta.VersionId = NewResourceVersionNumber.ToString();
        BlazeServiceRequest.Resource.Meta.LastUpdated = DateTimeOffset.Now;

        //Validation of resource        
        Interfaces.IResourceValidation Validation = Blaze.Engine.Validation.ResourceValidationFactory.GetValidationInstance(CurrentResourceType);
        IResourceValidationOperationOutcome oResourceValidationOperationOutcome = Validation.Validate(BlazeServiceRequest.Resource);
        if (oResourceValidationOperationOutcome.HasError)
        {
          oBlazeServiceOperationOutcome.ResourceValidationOperationOutcome = oResourceValidationOperationOutcome;
          return oBlazeServiceOperationOutcome;
        }

        _UnitOfWork.PatientRepository.UpdateResource(NewResourceVersionNumber, BlazeServiceRequest.Resource, BlazeServiceRequest.FhirRequestUri);
        oBlazeServiceOperationOutcome.OperationType = DtoEnums.CrudOperationType.Update;
        oBlazeServiceOperationOutcome.FhirResourceId = BlazeServiceRequest.ResourceId;
        oBlazeServiceOperationOutcome.LastModified = BlazeServiceRequest.Resource.Meta.LastUpdated;
        oBlazeServiceOperationOutcome.ResourceVersionNumber = NewResourceVersionNumber;
        return oBlazeServiceOperationOutcome;
        
      }
      else
      {
        //The resource is not found in the database so add it here and return 201 Created status code
        return this.Post(BlazeServiceRequest);
      }
    }

    //Delete
    //DELETE: URL/FhirApi/Patient/5
    public override IBlazeServiceOperationOutcome Delete(string FhirResourceId)
    {
      var oBlazeServiceOperationOutcome = new Blaze.Engine.Response.BlazeServiceOperationOutcome();
      oBlazeServiceOperationOutcome.OperationType = DtoEnums.CrudOperationType.Delete;
      oBlazeServiceOperationOutcome.FhirResourceId = FhirResourceId;
      oBlazeServiceOperationOutcome.ResourceVersionNumber = 0;
      IDatabaseOperationOutcome DatabaseOperationOutcome = Repository.GetResourceByFhirID(FhirResourceId);
      if (DatabaseOperationOutcome.ResourceMatchingSearch != null)
      {
        //Resource exists so..
        if (!DatabaseOperationOutcome.ResourceMatchingSearch.IsDeleted)
        {
          int NewResourceVersionNumber = DatabaseOperationOutcome.ResourceMatchingSearch.Version + 1;
          _UnitOfWork.PatientRepository.UpdateResouceAsDeleted(FhirResourceId, NewResourceVersionNumber);
          oBlazeServiceOperationOutcome.ResourceVersionNumber = NewResourceVersionNumber;
        }
        else
        {
          oBlazeServiceOperationOutcome.ResourceVersionNumber = DatabaseOperationOutcome.ResourceMatchingSearch.Version;
        }
      }
      return oBlazeServiceOperationOutcome;
    }

  }
}