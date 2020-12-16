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
                IssueList.Add(Pyro.Common.Tools.FhirOperationOutcomeSupport.CreateIssue(OperationOutcome.IssueSeverity.Error, OperationOutcome.IssueType.Invalid, $"The ${_OperationName} can only accept Bundle resources of Bundle.type = 'message'. Type found was {bundle.Type.ToString()}"));
            }
            else if (bundle.Entry.FirstOrDefault()?.Resource is MessageHeader)
            {
                var messageHeader = bundle.Entry.First().Resource as MessageHeader;
                var orgResourceRef = messageHeader.Sender;
                var coding = messageHeader.Event as Coding;
                if (coding == null)
                {
                    IssueList.Add(Tools.FhirOperationOutcomeSupport.CreateIssue(OperationOutcome.IssueSeverity.Error, OperationOutcome.IssueType.Invalid, $"The ${_OperationName} has a MessageHeader but an eventCoding was missing or invalid. {bundle.Type.ToString()}"));
                }
                else if (!coding.System.Contains("http://snomed.info/sct") || !coding.Code.Contains("371528001"))
                {
                    if (!coding.System.Contains("http://snomed.info/sct"))
                        IssueList.Add(Tools.FhirOperationOutcomeSupport.CreateIssue(OperationOutcome.IssueSeverity.Error, OperationOutcome.IssueType.Invalid, $"The ${_OperationName} expects a valid eventCoding snomed code or the code you submitted is not supported. {bundle.Type.ToString()}"));
                    else
                        IssueList.Add(Tools.FhirOperationOutcomeSupport.CreateIssue(OperationOutcome.IssueSeverity.Error, OperationOutcome.IssueType.Invalid, $"The ${_OperationName} expects a valid supported eventCode containing a supported snomed reference to snomed.info/sct. {bundle.Type.ToString()}"));
                }
                // Organization check : This is only checking the Sender matches the ref (not that it's an organisation)
                else if (!bundle.FindEntry(orgResourceRef).Any())
                {
                    IssueList.Add(Tools.FhirOperationOutcomeSupport.CreateIssue(OperationOutcome.IssueSeverity.Error, OperationOutcome.IssueType.Invalid, $"The ${_OperationName} expects a valid Organization but could not find one. {bundle.Type.ToString()}"));
                }
                else if (!IssueList.Any())  // If we have not issues at this point check we have an org and diagnostic report
                {
                    // We must have an Organization and a DiagnosticReport in the bundle
                    var orgFound = false;
                    var diagnosticReportFound = false;
                    foreach (var entry in bundle.Entry)
                    {
                        switch (entry.Resource)
                        {
                            case Organization _:
                                orgFound = true;
                                break;
                            case DiagnosticReport _:
                                diagnosticReportFound = true;
                                break;
                        }
                    }

                    if (!orgFound)
                        IssueList.Add(Tools.FhirOperationOutcomeSupport.CreateIssue(OperationOutcome.IssueSeverity.Error, OperationOutcome.IssueType.Invalid, $"The ${_OperationName} expects a valid Organization but could not find one. {bundle.Type.ToString()}"));
                    if (!diagnosticReportFound)
                        IssueList.Add(Tools.FhirOperationOutcomeSupport.CreateIssue(OperationOutcome.IssueSeverity.Error, OperationOutcome.IssueType.Invalid, $"The ${_OperationName} expects a valid DiagnosticReport but could not find one. {bundle.Type.ToString()}"));
                }
            }
            else
                IssueList.Add(Pyro.Common.Tools.FhirOperationOutcomeSupport.CreateIssue(OperationOutcome.IssueSeverity.Error, OperationOutcome.IssueType.Invalid, $"The ${_OperationName} has found a Bundle but expects a resourceType of Messageheader as the first entry"));

            //TODO: Process the message bundle
            ResourceServiceOutcome.HttpStatusCode = System.Net.HttpStatusCode.OK;
            //ResourceServiceOutcome.ResourceResult = ProcessMessageResult;
            ResourceServiceOutcome.OperationType = Enum.RestEnum.CrudOperationType.Update;
            ResourceServiceOutcome.SuccessfulTransaction = true;
            
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
