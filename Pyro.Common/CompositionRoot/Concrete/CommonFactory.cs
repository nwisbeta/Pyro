﻿using System.Collections.Generic;
using System.Linq;
using Hl7.Fhir.Specification.Source;
using Pyro.Common.Service.ResourceService;
using Pyro.Common.Interfaces.Tools.HtmlSupport;
using Pyro.Common.FhirOperation.Validate;
using Pyro.Common.FhirOperation.IhiSearch;
using Pyro.Common.FhirOperation.DeleteHistoryIndexes;
using Pyro.Common.FhirOperation.ResourceReport;
using Pyro.Common.FhirOperation.Compartment;
using Pyro.Common.FhirOperation.ConnectathonAnswer;

namespace Pyro.Common.CompositionRoot.Concrete
{
  public class CommonFactory : ICommonFactory
  {
    private readonly SimpleInjector.Container Container;

    public CommonFactory(SimpleInjector.Container Container)
    {
      this.Container = Container;
    }
    
    public IDeleteHistoryIndexesOperation CreateDeleteHistoryIndexesOperation()
    {
      return Container.GetInstance<IDeleteHistoryIndexesOperation>();
    }
    
    public IResourceReportOperation CreateResourceReportOperation()
    {
      return Container.GetInstance<IResourceReportOperation>();
    }

    public IFhirValidateOperation CreateFhirValidateOperation()
    {
      return Container.GetInstance<IFhirValidateOperation>();
    }
    
    public IList<IResourceResolver> CreateResourceResolverList()
    {
      return Container.GetAllInstances<IResourceResolver>().ToList();
    }

    public IHtmlGenerationSupport CreateFhirNarativeGenerationSupport()
    {
      return Container.GetInstance<IHtmlGenerationSupport>();
    }

    public IConnectathonAnswerOperation CreateConnectathonAnswerOperation()
    {
      return Container.GetInstance<IConnectathonAnswerOperation>();
    }

    public IIHISearchOrValidateOperation CreateIHISearchOrValidateOperation()
    {
      return Container.GetInstance<IIHISearchOrValidateOperation>();
    }

    public ICompartmentOperation CreateCompartmentOperation()
    {
      return Container.GetInstance<ICompartmentOperation>();      
    }
  }
}