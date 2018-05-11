﻿using System;
using System.Collections.Generic;
using Pyro.Common.DtoEntity;
using Pyro.Common.Search;
using Pyro.Common.Tools.UriSupport;
using Pyro.Common.Interfaces.Service;
using Hl7.Fhir.Model;

namespace Pyro.Common.Interfaces.Repositories
{
  public interface IResourceRepository
  {
    FHIRAllTypes RepositoryResourceType { get; }
    IDatabaseOperationOutcome GetResourceBySearch(PyroSearchParameters DtoSearchParameters, bool WithXml = false);
    IDatabaseOperationOutcome GetResourceByCompartmentSearch(PyroSearchParameters CompartmentSearchParameters, PyroSearchParameters DtoSearchParameters, bool WithXml = false);
    IDatabaseOperationOutcome AddResource(Resource Resource, IPyroRequestUri FhirRequestUri);
    IDatabaseOperationOutcome UpdateResource(string ResourceVersion, Resource Resource, IPyroRequestUri FhirRequestUri);
    IDatabaseOperationOutcome UpdateResouceIdAsDeleted(string FhirResourceId);
    IDatabaseOperationOutcome UpdateResouceIdColectionAsDeleted(ICollection<string> ResourceIdCollection);
    IDatabaseOperationOutcome GetResourceHistoryByFhirID(string FhirId, PyroSearchParameters DtoSearchParameters);
    IDatabaseOperationOutcome GetResourceByFhirIDAndVersionNumber(string FhirId, string ResourceVersionNumber);
    IDatabaseOperationOutcome GetResourceByFhirID(string FhirId, bool WithXml = false, bool IncludeDeleted = true);


    string[] GetResourceFhirIdByResourceIdAndIndexReferance(int ResourceId, int[] SearchParameterIdArray, string ResourceName = "");
    string[] GetResourceFhirIdBySearchNoPaging(PyroSearchParameters DtoSearchParameters);
    string[] GetResourceFhirIdByReferanceIndex(IEnumerable<string> FhirIdArray, string ResourceName, int SearchParameterIdArray);

    int DeleteNonCurrentResourceIndexes();
    void AddCurrentResourceIndex(List<DtoServiceSearchParameterLight> ServiceSearchParameterLightList, IPyroRequestUri FhirRequestUri);
    int GetTotalCurrentResourceCount();
    DateTimeOffset? GetLastCurrentResourceLastUpdatedValue();
  }
}
