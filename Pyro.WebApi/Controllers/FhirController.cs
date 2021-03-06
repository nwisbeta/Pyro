﻿using Pyro.Common.BackgroundTask;
using Pyro.Common.Extentions;
using Pyro.Common.FhirHttpResponse;
using Pyro.Common.Service.ResourceService;
using Pyro.Engine.Services.PyroServiceApi;
using Pyro.WebApi.Attributes;
using Pyro.WebApi.Authorization;
using Pyro.WebApi.Extensions;
using System.Linq;
using System.Net.Http;
using System.Net.Http.Formatting;
using System.Security.Claims;
using System.Web.Http;
using FhirModel = Hl7.Fhir.Model;

namespace Pyro.WebApi.Controllers
{
  [RoutePrefix(Pyro.Common.Web.StaticWebInfo.ServiceRoute)]
  //[AllowAnonymous]
  public class FhirController : ApiController
  {    
    private readonly IPyroService IPyroService;
    private readonly IFhirRestResponse IFhirRestResponse;
    private readonly ITaskPerformerNegotiator ITaskPerformerNegotiator;
    private readonly Pyro.Common.Logging.ILog Log;
    //Constructor for dependence injection inject container into 
    public FhirController(IPyroService IPyroService, IFhirRestResponse IFhirRestResponse, ITaskPerformerNegotiator ITaskPerformerNegotiator, Pyro.Common.Logging.ILog Log)
    {    
      this.IPyroService = IPyroService;
      this.ITaskPerformerNegotiator = ITaskPerformerNegotiator;
      this.IFhirRestResponse = IFhirRestResponse;
      this.Log = Log;      
      //Log.Info($"Test logging");
    }

    [HttpGet, Route("claims")]
    public IHttpActionResult Get()
    {
      var user = User as ClaimsPrincipal;
      var claims = from c in user.Claims
                   select new
                   {
                     type = c.Type,
                     value = c.Value
                   };
      
      return Json(claims);
    }


    //Service Root Base
    //// POST: URL//FhirApi
    /// <summary>
    /// The service root can accept a Batch Transaction bundle.
    /// The batch and transaction interactions submit a set of actions to perform on a server in a single 
    /// HTTP request/response. The actions may be performed independently as a "batch", or as a single 
    /// atomic "transaction" where the entire set of changes succeed or fail as a single entity. 
    /// Multiple actions on multiple resources of the same or different types may be submitted, and they 
    /// may be a mix of other interactions defined on this page (e.g. read, search, create, update, delete, etc.).
    /// </summary>
    /// <param name="resource">Batch Transaction bundle</param>
    /// <returns>Status Code 200 (OK) and a Batch Transaction response bundle or an OperationOutcome resource if an error has been encountered. The Transaction response bundle will inform how each resource was actioned within the entry.response elements.</returns>
    [HttpPost, Route("")]
    [ActionLog]
    public HttpResponseMessage Base([FromBody] FhirModel.Resource resource)
    {
      string BaseRequestUri = this.CalculateBaseURI("");
      IResourceServiceOutcome ResourceServiceOutcome = IPyroService.Base(BaseRequestUri, Request, resource);
      return IFhirRestResponse.GetHttpResponseMessage(ResourceServiceOutcome, Request, ResourceServiceOutcome.SummaryType);
    }

    //Metadata 
    // GET: URL//FhirApi/metadata
    /// <summary>
    /// Get the FHIR CapabilityStatement Resource for this Server.
    /// </summary>
    /// <returns>CapabilityStatement Resource</returns>
    [HttpGet, Route("metadata")]
    [ActionLog]
    public HttpResponseMessage GetMetadata()
    {
      string BaseRequestUri = this.CalculateBaseURI("metadata");
      IResourceServiceOutcome ResourceServiceOutcome = IPyroService.Metadata(BaseRequestUri, Request);
      return IFhirRestResponse.GetHttpResponseMessage(ResourceServiceOutcome, Request, ResourceServiceOutcome.SummaryType);
    }

    // Get By id
    // GET URL/FhirApi/Patient/5
    /// <summary>
    /// Get a Resource by the Resource name and the id of the required resource instance.
    /// For example:
    /// http://SomeServer.net/fhirapi/Patient/123456
    /// </summary>
    /// <param name="ResourceName">The name of a FHIR Resource, for example 'Patient'</param>
    /// <param name="id">The FHIR Resource's id</param>
    /// <returns>Returns the single FHIR Resource identified by the id given or status code 400 (Not found) </returns>
    [HttpGet, Route("{ResourceName}/{id}")]
    [ActionLog]       
    public HttpResponseMessage GetId(string ResourceName, string id)
    {
      //var caller = User as ClaimsPrincipal;
      string BaseRequestUri = this.CalculateBaseURI("{ResourceName}");
      IResourceServiceOutcome ResourceServiceOutcome = IPyroService.Get(BaseRequestUri, Request, ResourceName, id);
      //Below is only testing at this stage. No real tasks going as yet.
      SignalRHub.BackgroundProcessing.SendTaskList(ResourceServiceOutcome.BackgroundTaskList, ITaskPerformerNegotiator, this.Configuration.DependencyResolver);      
      return IFhirRestResponse.GetHttpResponseMessage(ResourceServiceOutcome, Request, ResourceServiceOutcome.SummaryType);      
    }

    // Get By id and _history vid
    // GET URL/FhirApi/Patient/5/_history/2
    // GET URL/FhirApi/Patient/5/_history
    /// <summary>
    /// Get a Resource's entire history or an given history instance for the Resource by its version id (vid)
    /// For example: 
    /// http://SomeServer.net/fhirapi/Patient/123456/_history/5
    /// </summary>
    /// <param name="ResourceName">The name of a FHIR Resource, for example 'Patient'</param>
    /// <param name="id">The FHIR Resource's id</param>
    /// <param name="vid">The version id if requesting a single version instance, leave empty if you require the entire history for the resource instance.</param>
    /// <returns>Returns the single FHIR Resource identified by the id and the vid (Version Number) or returns the entire history for the resource instance as a history bundle if vid is empty or status code 400 (Not found) </returns>
    [HttpGet, Route("{ResourceName}/{id}/_history/{vid?}")]
    [ActionLog]
    public HttpResponseMessage GetHistory(string ResourceName, string id, string vid = "")
    {
      string BaseRequestUri = this.CalculateBaseURI("{ResourceName}");
      IResourceServiceOutcome ResourceServiceOutcome = IPyroService.GetHistory(BaseRequestUri, Request, ResourceName, id, vid);
      return IFhirRestResponse.GetHttpResponseMessage(ResourceServiceOutcome, Request, ResourceServiceOutcome.SummaryType);
    }

    //Search
    // GET: URL//FhirApi/Patient?family=Smith&given=John
    /// <summary>
    /// Search for a FHIR resource using the Resources defined search parameters.
    /// For example: 
    /// http://SomeServer.net/fhirapi/Patient?family=Smith&amp;given=John
    /// </summary>
    /// <param name="ResourceName">The name of a FHIR Resource, for example 'Patient'</param>
    /// <returns>Returns a bundle containing all resources that match the search criteria.</returns>
    [HttpGet, Route("{ResourceName}")]
    [ActionLog]
    public HttpResponseMessage GetSearch(string ResourceName)
    {
      string BaseRequestUri = this.CalculateBaseURI("{ResourceName}");
      IResourceServiceOutcome ResourceServiceOutcome = IPyroService.Search(BaseRequestUri, Request, ResourceName);
      return IFhirRestResponse.GetHttpResponseMessage(ResourceServiceOutcome, Request, ResourceServiceOutcome.SummaryType);
    }


    //Compartment Search
    // GET: URL/FhirApi/Patient/[id]/Observation?code=http://loinc.org|LA20343-2
    /// <summary>
    /// Search for FHIR resources in a Compartment using the Resources defined search parameters.
    /// For example: 
    /// http://SomeServer.net/fhir/Patient/123456/Observation?code=http://loinc.org|LA20343-2
    /// This example would return all Observation resources with a code of LA20343-2 for the patient with a Patient resource id of 123456
    /// Or to say it another way, this only searches for resources in the Patient id=123456 Compartment
    /// </summary>
    /// <param name="Compartment">The Compartment to search in, is a FHIR ResourceType, for example 'Patient'</param>
    /// <param name="id">The Compartment's id, is a resource id for the Compartment container, for example '123456'</param>
    /// <param name="ResourceName">The name of a FHIR Resource to search for, for example 'Observation'</param>
    /// <returns></returns>
    [HttpGet, Route("{Compartment}/{id}/{ResourceName}")]
    [ActionLog]
    public HttpResponseMessage GetCompartmentSearch(string Compartment, string id, string ResourceName)
    {     
      //throw new System.NotImplementedException("Compartment requests are not implemented on this server as yet.");
      string BaseRequestUri = this.CalculateBaseURI("{Compartment}/{id}/{ResourceName}");      
      IResourceServiceOutcome ResourceServiceOutcome = IPyroService.CompartmentSearch(BaseRequestUri, Request, Compartment, id, ResourceName);
      return IFhirRestResponse.GetHttpResponseMessage(ResourceServiceOutcome, Request, ResourceServiceOutcome.SummaryType);
    }


    // Create
    // POST: URL/FhirApi/Patient
    /// <summary>
    /// Creates a new Resource in the server. The server will assign its own id and that id will be a GUID.
    /// For example: 
    /// http://SomeServer.net/fhirapi/Patient
    /// Where the HTTP body is a FHIR Patient resource instance in JSON or XML format.
    /// If the client wishes to have control over the id of a newly submitted Resource, it should use the PUT (update) interaction instead.     
    /// </summary>
    /// <param name="ResourceName">The name of the FHIR resource that is contained in the HTTP body</param>
    /// <param name="resource">The actual Resource in the HTTP body</param>
    /// <returns>Status Code 200 (OK) and an echo of the created FHIR resource or an OperationOutcome resource if an error has been encountered.</returns>
    [HttpPost, Route("{ResourceName}")]
    [ActionLog]
    public HttpResponseMessage Post(string ResourceName, [FromBody] FhirModel.Resource resource)
    {
      string BaseRequestUri = this.CalculateBaseURI("{ResourceName}");
      IResourceServiceOutcome ResourceServiceOutcome = IPyroService.Post(BaseRequestUri, Request, ResourceName, resource);
      return IFhirRestResponse.GetHttpResponseMessage(ResourceServiceOutcome, Request, ResourceServiceOutcome.SummaryType);
    }

    // Post Form Data Search
    // POST: URL/FhirApi/Patient/_search
    /// <summary>
    /// Search for a set of resources by providing the search parameters as form data (Content-Type: application/x-www-form-urlencoded).
    /// </summary>
    /// <param name="ResourceName">The name of a FHIR Resource, for example 'Patient'</param>
    /// <param name="FormDataCollection">The HTTP body is to be search parameters in a form data format.</param>
    /// <returns>Returns a bundle containing all resource that match the search criteria.</returns>
    [HttpPost, Route("{ResourceName}/_search")]
    [ActionLog]
    public HttpResponseMessage PostFormSearch(string ResourceName, [FromBody] FormDataCollection FormDataCollection)
    {
      string BaseRequestUri = this.CalculateBaseURI("{ResourceName}");
      IResourceServiceOutcome ResourceServiceOutcome = IPyroService.PostFormSearch(BaseRequestUri, Request, ResourceName, FormDataCollection.GetAsTupleCollection());
      return IFhirRestResponse.GetHttpResponseMessage(ResourceServiceOutcome, Request, ResourceServiceOutcome.SummaryType);
    }

    //Update
    // PUT: URL/FhirApi/Patient/5
    /// <summary>
    /// Updates creates a new current version for an existing resource or creates an initial version if no resource already exists for the given id.
    /// For example: 
    /// http://SomeServer.net/fhirapi/Patient/123456
    /// Where the HTTP body is a FHIR Patient resource instance in JSON or XML format and the id in the resource equals the [id] in the URL, 123456 in this case.
    /// </summary>
    /// <param name="ResourceName">The name of the FHIR resource that is contained in the HTTP body</param>
    /// <param name="id">The FHIR Resource's id</param>
    /// <param name="resource">The actual Resource in the HTTP body</param>
    /// <returns>Status Code 200 (OK) and an echo of the created FHIR resource in the HTTP body or an OperationOutcome resource if an error has been encountered.</returns>
    [HttpPut, Route("{ResourceName}/{id}")]
    [ActionLog]
    public HttpResponseMessage Put(string ResourceName, string id, [FromBody] FhirModel.Resource resource)
    {
      string BaseRequestUri = this.CalculateBaseURI("{ResourceName}");
      IResourceServiceOutcome ResourceServiceOutcome = IPyroService.Put(BaseRequestUri, Request, ResourceName, id, resource);
      return IFhirRestResponse.GetHttpResponseMessage(ResourceServiceOutcome, Request, ResourceServiceOutcome.SummaryType);
    }

    //Delete
    // DELETE: URL/FhirApi/Patient/5
    /// <summary>
    /// Deletes removes an existing resource at the given id.
    /// This server supports version history. 
    /// The delete interaction does not remove a resource's version history. From a version history respect, deleting a resource is the equivalent of creating a special kind of history entry that has no content and is marked as deleted. 
    /// </summary>
    /// <param name="ResourceName">The name of the FHIR resource that is being removed.</param>
    /// <param name="id">The FHIR Resource's id to be removed.</param>
    /// <returns>HTTP Status code 204 (No Content)</returns>
    [HttpDelete, Route("{ResourceName}/{id}")]
    [ActionLog]
    public HttpResponseMessage Delete(string ResourceName, string id)
    {
      string BaseRequestUri = this.CalculateBaseURI("{ResourceName}");
      IResourceServiceOutcome ResourceServiceOutcome = IPyroService.Delete(BaseRequestUri, Request, ResourceName, id);
      return IFhirRestResponse.GetHttpResponseMessage(ResourceServiceOutcome, Request, ResourceServiceOutcome.SummaryType);
    }

    //Conditional Update
    // PUT: URL/FhirApi/Patient/5
    /// <summary>
    /// Conditional Update takes a set of search parameters and if a single resource is located then it will update this resource as a new version.
    /// If many resources are located then a HTTP Status '412: Precondition Failed' will be returned. 
    /// If no resource is located then a create is performed creating an initial version.
    /// For example: 
    /// http://SomeServer.net/fhirapi/Patient?identifer=www.acmehealth.com.au/identifier/mrn|123456
    /// Where the HTTP body is a FHIR Patient resource instance in JSON or XML format search for resources with an 'identifier' with the system of 'www.acmehealth.com.au/identifier/mrn' and value of '123456' 
    /// and update if a single resource is found or create if not resource is found (Server will assign it's own id). If many resource are found by the search
    /// then a http status code of '412: Precondition Failed' will be returned.
    /// </summary>
    /// <param name="ResourceName">The name of the FHIR resource that is contained in the HTTP body</param>    
    /// <param name="resource">The actual Resource in the HTTP body</param>
    /// <returns>Status Code 200 (OK) and an echo of the created FHIR resource in the HTTP body or, 412: Precondition Failed or an OperationOutcome resource if an error has been encountered.</returns>
    [HttpPut, Route("{ResourceName}")]
    [ActionLog]
    public HttpResponseMessage ConditionalPut(string ResourceName, [FromBody] FhirModel.Resource resource)
    {
      string BaseRequestUri = this.CalculateBaseURI("{ResourceName}");
      IResourceServiceOutcome ResourceServiceOutcome = IPyroService.ConditionalPut(BaseRequestUri, Request, ResourceName, resource);
      return IFhirRestResponse.GetHttpResponseMessage(ResourceServiceOutcome, Request, ResourceServiceOutcome.SummaryType);
    }

    //Delete
    // DELETE: URL/FhirApi/Patient/5
    /// <summary>
    /// Conditional Delete removes an existing resource or set of Resources given a set of search parameters for the given Resource.
    /// This operation must be given at least one Resources defined search parameter to work and all parameter must be understood by this server.
    /// If not a HTTP status code of 412 Precondition Failed will be returned. 
    /// This server supports version history. 
    /// The delete interaction does not remove a resource's version history. From a version history respect, deleting a resource is the equivalent of creating a special kind of history entry that has no content and is marked as deleted. 
    /// </summary>
    /// <param name="ResourceName">The name of the FHIR resource that is being removed.</param>    
    /// <returns>HTTP Status codes: 204 (No Content) or 404 Not Found or 412 Precondition Failed</returns>
    [HttpDelete, Route("{ResourceName}")]
    [ActionLog]
    public HttpResponseMessage ConditionalDelete(string ResourceName)
    {
      string BaseRequestUri = this.CalculateBaseURI("{ResourceName}");
      IResourceServiceOutcome ResourceServiceOutcome = IPyroService.ConditionalDelete(BaseRequestUri, Request, ResourceName);
      return IFhirRestResponse.GetHttpResponseMessage(ResourceServiceOutcome, Request, ResourceServiceOutcome.SummaryType);
    }


    //Resource Operations
    // POST: URL/FhirApi/Patient/$delete-history-indexes
    /// <summary>
    /// Resource operation endpoint. This is for operations that are to be performed on a Resource type, for example: Patient
    /// </summary>
    /// <param name="ResourceName">The name of the FHIR resource that the operation applies to.</param>
    /// <param name="operation">The name of the operation, must be prefixed with a '$'. For example: '$my-operation-name' </param>
    /// <param name="Resource">Typically this is a Parameters resource given in the body</param>
    /// <returns></returns>
    [HttpPost, Route("{ResourceName}/${operation}")]
    [ActionLog]
    public HttpResponseMessage OperationPostResourceWithParameters(string ResourceName, string operation, [FromBody] FhirModel.Resource Resource)
    {
      string BaseRequestUri = this.CalculateBaseURI("{ResourceName}");
      IResourceServiceOutcome ResourceServiceOutcome = IPyroService.OperationPostResourceWithParameters(BaseRequestUri, Request, ResourceName, operation, Resource);
      return IFhirRestResponse.GetHttpResponseMessage(ResourceServiceOutcome, Request, ResourceServiceOutcome.SummaryType);
    }

    //Resource Operations
    // POST: URL/FhirApi/Patient/5/$delete-history-indexes
    /// <summary>
    /// Resource operation endpoint. This is for operations that are to be performed on a Resource type and Resource instance, for example: Patient/5/$my-operation-name
    /// </summary>
    /// <param name="ResourceName">The name of the FHIR resource that the operation applies to.</param>
    /// <param name="id">The FHIR Resource's id</param>
    /// <param name="operation">The name of the operation, must be prefixed with a '$'. For example: '$my-operation-name' </param>
    /// <param name="Resource">Typically this is a Parameters resource given in the body</param>
    /// <returns></returns>
    [HttpPost, Route("{ResourceName}/{id}/${operation}")]
    [ActionLog]
    public HttpResponseMessage OperationPostResourceInstanceWithParameters(string ResourceName, string id, string operation, [FromBody] FhirModel.Resource Resource)
    {
      string BaseRequestUri = this.CalculateBaseURI("{ResourceName}");
      IResourceServiceOutcome ResourceServiceOutcome = IPyroService.OperationPostResourceInstanceWithParameters(BaseRequestUri, Request, ResourceName, operation, id, Resource);
      return IFhirRestResponse.GetHttpResponseMessage(ResourceServiceOutcome, Request, ResourceServiceOutcome.SummaryType);
    }

    //Resource Operations
    // GET: URL/FhirApi/CompartmentDefinition/5/$x-set-compartment-active
    /// <summary>
    /// Resource operation endpoint. This is for operations that are to be performed on a Resource type and Resource instance, for example: Patient/5/$my-operation-name
    /// </summary>
    /// <param name="ResourceName">The name of the FHIR resource that the operation applies to.</param>
    /// <param name="id">The FHIR Resource's id</param>
    /// <param name="operation">The name of the operation, must be prefixed with a '$'. For example: '$my-operation-name' </param>    
    /// <returns></returns>
    [HttpGet, Route("{ResourceName}/{id}/${operation}")]
    [ActionLog]
    public HttpResponseMessage OperationGetResourceInstanceWithParameters(string ResourceName, string id, string operation)
    {
      string BaseRequestUri = this.CalculateBaseURI("{ResourceName}");
      IResourceServiceOutcome ResourceServiceOutcome = IPyroService.OperationGetResourceInstanceWithParameters(BaseRequestUri, Request, ResourceName, operation, id);
      return IFhirRestResponse.GetHttpResponseMessage(ResourceServiceOutcome, Request, ResourceServiceOutcome.SummaryType);
    }

    //Service Operations
    // POST: URL/fhir/$delete-history-indexes
    /// <summary>
    /// Base operation endpoint. This is for operations that are to be performed on the server base
    /// </summary>    
    /// <param name="operation">The name of the operation, must be prefixed with a '$'. For example: '$my-operation-name' </param>
    /// <param name="Resource">Must be a Parameters resource given in the body, even if no parameters are required</param>
    /// <returns></returns>
    [HttpPost, Route("${operation}")]
    [ActionLog]                
    public HttpResponseMessage OperationPostBaseWithParameters(string operation, [FromBody] FhirModel.Resource Resource)
    {
      string BaseRequestUri = this.CalculateBaseURI("${operation}");
      IResourceServiceOutcome ResourceServiceOutcome = IPyroService.OperationPostBaseWithParameters(BaseRequestUri, Request, operation, Resource);
      SignalRHub.BackgroundProcessing.SendTaskList(ResourceServiceOutcome.BackgroundTaskList, ITaskPerformerNegotiator, Configuration.DependencyResolver);
      return IFhirRestResponse.GetHttpResponseMessage(ResourceServiceOutcome, Request, ResourceServiceOutcome.SummaryType);
    }

    //Service Operations
    // GET: URL/fhir/$delete-history-indexes
    /// <summary>
    /// Base operation endpoint. This is for operations that are to be performed on the server base
    /// </summary>    
    /// <param name="operation">The name of the operation, must be prefixed with a '$'. For example: '$my-operation-name' </param>    
    /// <returns></returns>
    [HttpGet, Route("${operation}")]
    [ActionLog]
    public HttpResponseMessage OperationGetBaseWithParameters(string operation)
    {
      string BaseRequestUri = this.CalculateBaseURI("${operation}");
      IResourceServiceOutcome ResourceServiceOutcome = IPyroService.OperationGetBaseWithParameters(BaseRequestUri, Request, operation);
      SignalRHub.BackgroundProcessing.SendTaskList(ResourceServiceOutcome.BackgroundTaskList, ITaskPerformerNegotiator, Configuration.DependencyResolver);
      return IFhirRestResponse.GetHttpResponseMessage(ResourceServiceOutcome, Request, ResourceServiceOutcome.SummaryType);
    }
    
  }



}
