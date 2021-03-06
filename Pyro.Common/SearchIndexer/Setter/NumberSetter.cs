﻿using System;
using Hl7.Fhir.ElementModel;
using Hl7.Fhir.Model;
using Pyro.Common.Search;
using System.Collections.Generic;
using Pyro.Common.SearchIndexer.Index;

namespace Pyro.Common.SearchIndexer.Setter
{
  public class NumberSetter : INumberSetter
  {
    private IServiceSearchParameterLight _SearchParameter;

    public NumberSetter() { }
    
    public IList<IQuantityIndex> Set(ITypedElement oElement, IServiceSearchParameterLight SearchParameter)
    {
      var ResourceIndexList = new List<IQuantityIndex>();
      _SearchParameter = SearchParameter;

      if (oElement is IFhirValueProvider FhirValueProvider && FhirValueProvider.FhirValue != null)
      {
        if (FhirValueProvider.FhirValue is Integer Integer)
        {
          SetInteger(Integer, ResourceIndexList);
        }
        else if (FhirValueProvider.FhirValue is PositiveInt PositiveInt)
        {
          SetPositiveInt(PositiveInt, ResourceIndexList);
        }
        else if (FhirValueProvider.FhirValue is Duration Duration)
        {
          SetDuration(Duration, ResourceIndexList);
        }
        else if (FhirValueProvider.FhirValue is FhirDecimal FhirDecimal)
        {
          SetFhirDecimal(FhirDecimal, ResourceIndexList);
        }
        else if (FhirValueProvider.FhirValue is Range Range)
        {
          SetRange(Range, ResourceIndexList);
        }
        else
        {
          throw new FormatException($"Unknown FhirType: '{oElement.InstanceType}' for SearchParameterType: '{SearchParameter.Type}'");
        }

        return ResourceIndexList;
      }
      else
      {
        throw new FormatException($"Unknown Navigator FhirType: '{oElement.InstanceType}' for SearchParameterType: '{SearchParameter.Type}'");
      }
    }
    
    private void SetFhirDecimal(FhirDecimal FhirDecimal, IList<IQuantityIndex> ResourceIndexList)
    {
      if (FhirDecimal.Value.HasValue)
      {
        var ResourceIndex = new QuantityIndex(_SearchParameter);
        ResourceIndex.Quantity = FhirDecimal.Value;
        ResourceIndex.Comparator = null;
        ResourceIndexList.Add(ResourceIndex);
      }
    }

    private void SetRange(Range Range, IList<IQuantityIndex> ResourceIndexList)
    {
      if (Range.Low != null)
      {
        if (Range.Low.Value.HasValue)
        {
          var ResourceIndex = new QuantityIndex(_SearchParameter);
          ResourceIndex.Quantity = Range.Low.Value;
          ResourceIndex.Comparator = Quantity.QuantityComparator.GreaterOrEqual;
          ResourceIndexList.Add(ResourceIndex);
        }
      }
      if (Range.High != null)
      {
        if (Range.High.Value.HasValue)
        {
          var ResourceIndex = new QuantityIndex(_SearchParameter);
          ResourceIndex.Quantity = Range.High.Value;
          ResourceIndex.Comparator = Quantity.QuantityComparator.LessOrEqual;
          ResourceIndexList.Add(ResourceIndex);
        }
      }
    }

    private void SetDuration(Duration Duration, IList<IQuantityIndex> ResourceIndexList)
    {
      if (Duration.Value.HasValue)
      {
        var ResourceIndex = new QuantityIndex(_SearchParameter);
        ResourceIndex.Quantity = (decimal)Duration.Value;
        ResourceIndex.Comparator = Duration.Comparator;
        ResourceIndexList.Add(ResourceIndex);
      }
    }

    private void SetPositiveInt(PositiveInt PositiveInt, IList<IQuantityIndex> ResourceIndexList)
    {
      if (PositiveInt.Value.HasValue)
      {
        if (PositiveInt.Value < 0)
          throw new FormatException(string.Format("PositiveInt must be a positive value, value was : {0}", PositiveInt.Value.ToString()));

        var ResourceIndex = new QuantityIndex(_SearchParameter);
        ResourceIndex.Quantity = Convert.ToInt32(PositiveInt.Value);
        ResourceIndex.Comparator = null;
        ResourceIndexList.Add(ResourceIndex);
      }
    }

    private void SetInteger(Integer Integer, IList<IQuantityIndex> ResourceIndexList)
    {
      if (Integer.Value.HasValue)
      {
        var ResourceIndex = new QuantityIndex(_SearchParameter);
        ResourceIndexList.Add(ResourceIndex);
        ResourceIndex.Quantity = Convert.ToInt32(Integer.Value);
        ResourceIndex.Comparator = null;
        ResourceIndexList.Add(ResourceIndex);
      }
    }
  }
}
