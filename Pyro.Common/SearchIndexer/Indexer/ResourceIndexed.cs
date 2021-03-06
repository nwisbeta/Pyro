﻿using Hl7.Fhir.ElementModel;
using Hl7.Fhir.Model;
using Hl7.Fhir.Utility;
using Hl7.FhirPath;
using Pyro.Common.CompositionRoot;
using Pyro.Common.Search;
using Pyro.Common.ServiceSearchParameter;
using System.Collections.Generic;
using System.Linq;
using Pyro.Common.SearchIndexer.Index;
using Pyro.Common.Search.SearchParameterEntity;
using LinqKit;
using Hl7.Fhir.FhirPath;
using Pyro.Common.Tools.FhirPathSupport;
using Pyro.Common.Enum;

namespace Pyro.Common.SearchIndexer.Indexer
{
  public class ResourceIndexed : IResourceIndexed
  {
    private readonly IServiceSearchParameterCache IServiceSearchParameterCache;
    private readonly IIndexSetterFactory IIndexSetterFactory;
    private readonly IPyroFhirPathResolve IPyroFhirPathResolve;

    public ResourceIndexed(IServiceSearchParameterCache IServiceSearchParameterCache, IIndexSetterFactory IIndexSetterFactory, IPyroFhirPathResolve IPyroFhirPathResolve)
    {
      this.IServiceSearchParameterCache = IServiceSearchParameterCache;
      this.IIndexSetterFactory = IIndexSetterFactory;
      this.IPyroFhirPathResolve = IPyroFhirPathResolve;

      this.IndexQuantityList = new List<IQuantityIndex>();
      this.IndexDateTimeList = new List<IDateTimeIndex>();
      this.IndexReferenceList = new List<IReferenceIndex>();
      this.IndexStringList = new List<IStringIndex>();
      this.IndexTokenList = new List<ITokenIndex>();
      this.IndexUriList = new List<IUriIndex>();      
  }
    public string FhirID { get; set; }
    public string Key { get; set; }

    public ResourceType ResourceType { get; set; }

    public List<IDateTimeIndex> IndexDateTimeList { get; set; }
    public List<IQuantityIndex> IndexQuantityList { get; set; }
    public List<IReferenceIndex> IndexReferenceList { get; set; }
    public List<IStringIndex> IndexStringList { get; set; }
    public List<ITokenIndex> IndexTokenList { get; set; }
    public List<IUriIndex> IndexUriList { get; set; }

    public void Index(Resource CurrentResource, PyroSearchParameters DtoSearchParameters = null)
    {
      this.ResourceType = CurrentResource.ResourceType;
      this.FhirID = CurrentResource.Id;
      string ResourceName = CurrentResource.ResourceType.GetLiteral();
      IList<DtoServiceSearchParameterLight> SearchParametersList = IServiceSearchParameterCache.GetSearchParameterForResource(ResourceName);
      //Filter the list by only the search parameters provided, do not index for all
      if (DtoSearchParameters != null)
        SearchParametersList = SearchParametersList.Where(x => DtoSearchParameters.SearchParametersList.Any(d => d.Id == x.Id)).ToList();

      //Added in R4 1.2.1
      ITypedElement TypedElement = CurrentResource.ToTypedElement();
      //PocoNavigator Navigator = new PocoNavigator(CurrentResource);
      
      string Resource_ResourceName = FHIRAllTypes.Resource.GetLiteral();
      foreach (DtoServiceSearchParameterLight SearchParameter in SearchParametersList)
      {
        //Todo: Composite searchParameters are not supported as yet, need to do work to read 
        // the sub search parameters of the composite directly fro the SearchParameter resources.
        if (SearchParameter.Type != SearchParamType.Composite)
        {
          bool SetSearchParameterIndex = true;
         //We exclude the _id search parameter here because it is not indexed by the Token indexer but rather is on the Main resource table 
          //where the blob is stored. We must do this as all Token Codes are lower-cased and yet Resource Id is case sensitive.
          if (SearchParameter.Resource == Resource_ResourceName && SearchParameter.Name == SearchParameterForAllResourcesType._id.GetPyroLiteral())
          {
            SetSearchParameterIndex = false;
          }

          if (SetSearchParameterIndex)
          {
            string Expression = SearchParameter.Expression;
            if (SearchParameter.Resource == Resource_ResourceName)
            {
              //If the Expression is one with a parent resource of Resource then swap it for the actual current resource name
              //For example make 'Resource._tag' be 'Observation._tag' for Observation resources.
              Expression = CurrentResource.TypeName + SearchParameter.Expression.TrimStart(Resource_ResourceName.ToCharArray());
            }

            //New in FHIR R4 to handle fhir path resolve()
            //------------------------------------------------------------------------------------------
            //Add in the extended FhirPath functions from the fhir.net API as found here Hl7.Fhir.FhirPath.FhirEvaluationContext 
            //this adds extended support for some FHIR Path functions (hasValue, resolve, htmlchecks)                        
            //FhirPathCompiler.DefaultSymbolTable.AddFhirExtensions();
            //var oFhirEvaluationContext1 = new Hl7.Fhir.FhirPath.FhirEvaluationContext(Navigator);
            //The resolve() function then also needs to be provided an external resolver delegate that performs the resolve
            //that delegate can be set as below. Here I am providing my own implementation 'IPyroFhirPathResolve.Resolver' 
            //oFhirEvaluationContext1.Resolver = IPyroFhirPathResolve.Resolver;
            //IEnumerable<IElementNavigator> ResultList = Navigator.Select(Expression, oFhirEvaluationContext);
            //------------------------------------------------------------------------------------


            FhirPathCompiler.DefaultSymbolTable.AddFhirExtensions();

            var oFhirEvaluationContext = new Hl7.Fhir.FhirPath.FhirEvaluationContext(TypedElement);
            //The resolve() function then also needs to be provided an external resolver delegate that performs the resolve
            //that delegate can be set as below. Here I am providing my own implementation 'IPyroFhirPathResolve.Resolver' 
            oFhirEvaluationContext.ElementResolver = IPyroFhirPathResolve.Resolver;
            IEnumerable<ITypedElement> ResultList = TypedElement.Select(Expression, oFhirEvaluationContext);
            
            foreach (ITypedElement oElement in ResultList)
            {
              if (oElement != null)
              {
                switch (SearchParameter.Type)
                {
                  case SearchParamType.Number:
                    {
                      this.IndexQuantityList.AddRange(IIndexSetterFactory.CreateNumberSetter().Set(oElement, SearchParameter));
                      break;
                    }
                  case SearchParamType.Date:
                    {
                      this.IndexDateTimeList.AddRange(IIndexSetterFactory.CreateDateTimeSetter().Set(oElement, SearchParameter));
                      break;
                    }
                  case SearchParamType.String:
                    {
                      this.IndexStringList.AddRange(IIndexSetterFactory.CreateStringSetter().Set(oElement, SearchParameter));
                      break;
                    }
                  case SearchParamType.Token:
                    {
                      this.IndexTokenList.AddRange(IIndexSetterFactory.CreateTokenSetter().Set(oElement, SearchParameter));
                      break;
                    }
                  case SearchParamType.Reference:
                    {
                      this.IndexReferenceList.AddRange(IIndexSetterFactory.CreateReferenceSetter().Set(oElement, SearchParameter));
                      break;
                    }
                  case SearchParamType.Composite:
                    {
                      break;
                    }
                  case SearchParamType.Quantity:
                    {
                      this.IndexQuantityList.AddRange(IIndexSetterFactory.CreateQuantitySetter().Set(oElement, SearchParameter));
                      break;
                    }
                  case SearchParamType.Uri:
                    {
                      this.IndexUriList.AddRange(IIndexSetterFactory.CreateUriSetter().Set(oElement, SearchParameter));
                      break;
                    }
                  default:
                    throw new System.ComponentModel.InvalidEnumArgumentException(SearchParameter.Type.ToString(), (int)SearchParameter.Type, typeof(SearchParamType));
                }
              }
            }
          }
        }
      }
    }
    
  }
}
