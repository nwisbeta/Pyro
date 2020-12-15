using Hl7.Fhir.Model;
using Pyro.Common.CompositionRoot;
using Pyro.Common.Enum;
using Pyro.Common.Interfaces.Service;
using Pyro.Common.Search;
using Pyro.Common.Service.ResourceService;
using Pyro.Common.Tools.UriSupport;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace Pyro.Common.FhirOperation.ProcessMessage
{
    public class ProcessMessageOperation : IProcessMessageOperation
    {
        private readonly IResourceServiceOutcomeFactory IResourceServiceOutcomeFactory;

        //private string _OperationName = FhirOperationEnum.OperationType.ProcessMessage.GetPyroLiteral();
        private string _OperationName = "process-message";

        public ProcessMessageOperation(IResourceServices IResourceServices, IResourceServiceOutcomeFactory IResourceServiceOutcomeFactory, ISearchParameterServiceFactory ISearchParameterServiceFactory, IRequestMetaFactory IRequestMetaFactory)
        {
            this.IResourceServiceOutcomeFactory = IResourceServiceOutcomeFactory;
        }


        public IResourceServiceOutcome Process(IPyroRequestUri RequestUri, ISearchParameterGeneric SearchParameterGeneric, Resource Resource)
        {
            IResourceServiceOutcome ResourceServiceOutcome = IResourceServiceOutcomeFactory.CreateResourceServiceOutcome();
            var IssueList = new List<OperationOutcome.IssueComponent>();

            Bundle bundle = Resource as Bundle;

            if (bundle == null)
            {
                IssueList.Add(Pyro.Common.Tools.FhirOperationOutcomeSupport.CreateIssue(OperationOutcome.IssueSeverity.Error, OperationOutcome.IssueType.Invalid, $"The ${_OperationName} can only accept 'Bundle' resources. Resource received was: {Resource.ResourceType.ToString()}"));
            }
            else if (bundle.Type != Bundle.BundleType.Message)
            {
                IssueList.Add(Pyro.Common.Tools.FhirOperationOutcomeSupport.CreateIssue(OperationOutcome.IssueSeverity.Error, OperationOutcome.IssueType.Invalid, $"The ${_OperationName} can only accept Bundle resources of Bundle.type = 'Transaction'. Type found was {bundle.Type.ToString()}"));
            }
            else
            {
                //TODO: Process the message bundle
                ResourceServiceOutcome.HttpStatusCode = System.Net.HttpStatusCode.OK;
                //ResourceServiceOutcome.ResourceResult = ProcessMessageResult;
                ResourceServiceOutcome.OperationType = Enum.RestEnum.CrudOperationType.Update;
                ResourceServiceOutcome.SuccessfulTransaction = true;

            }

            if (IssueList.Count > 0)
            {
                var Op = Common.Tools.FhirOperationOutcomeSupport.Generate(IssueList);
                ResourceServiceOutcome.HttpStatusCode = System.Net.HttpStatusCode.BadRequest;
                ResourceServiceOutcome.ResourceResult = Op;
                ResourceServiceOutcome.OperationType = Enum.RestEnum.CrudOperationType.None;
                ResourceServiceOutcome.SuccessfulTransaction = false;
                return ResourceServiceOutcome;
            }
            else
            {
                return ResourceServiceOutcome;
            }
        }

        public void ProcessPathologyTest()
        {

        }
    }
}
