using Hl7.Fhir.Model;
using Hl7.Fhir.Rest;
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

        private string _OperationName = FhirOperationEnum.OperationType.ProcessMessage.GetPyroLiteral();
        
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
            else if (! (bundle.Entry.FirstOrDefault()?.Resource is MessageHeader))
            {
                IssueList.Add(Pyro.Common.Tools.FhirOperationOutcomeSupport.CreateIssue(OperationOutcome.IssueSeverity.Error, OperationOutcome.IssueType.Invalid, $"Instance failed constraint bdl-12 \"A message must have a MessageHeader as the first resource\""));
               
            }
            else
            {
                try {
                    ProcessMessage(bundle, IssueList);
                }
                catch(FhirOperationException fhirEx)
                {
                    IssueList.Add(Pyro.Common.Tools.FhirOperationOutcomeSupport.CreateIssue(OperationOutcome.IssueSeverity.Error, OperationOutcome.IssueType.Exception, fhirEx.Message));
                }
               
            }

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

        public void ProcessMessage(Bundle bundle, List<OperationOutcome.IssueComponent> IssueList)
        {
            var messageHeader = bundle.Entry.First().Resource as MessageHeader;

            if (!(messageHeader.Event is Coding coding))
            {
                IssueList.Add(InvalidIssue("MessageHeader.eventCoding is missing"));

            }
            else if (coding.System == CodeSystemUrl.Snomed && coding.Code == PathologyTestCode)
            {
                ProcessPathologyRequest(bundle, IssueList);
            }
            else
            {
                IssueList.Add(InvalidIssue($"Message event \"${coding.System}|${coding.Code}\" is not supported."));
            }
        }

        public void ProcessPathologyRequest(Bundle bundle, List<OperationOutcome.IssueComponent> IssueList)
        {
            var messageHeader = bundle.Entry.First().Resource as MessageHeader;

            // Validate "Pathology Request" bundle
            if (!(TryFind(bundle, entryRef: messageHeader.Sender) is Organization))
            {
                IssueList.Add(InvalidIssue($"MessageHeader.Sender does not reference an Organization resource in the bundle"));
            }

            // Diagnostic Report exists?
            if (TryFind(bundle, entryRef: messageHeader.Focus?.FirstOrDefault()) is DiagnosticReport report)
            {
                //Observation exists?
                if (TryFind(bundle, entryRef: report.Result?.FirstOrDefault()) is Observation observation)
                {
                    // Validate Observation
                    if (!observation.Issued.HasValue)
                    {
                        IssueList.Add(InvalidIssue($"Observation.Issue is missing"));
                    }
                    if (observation.Code?.Coding?.FirstOrDefault()?.System != CodeSystemUrl.Snomed)
                    {
                        IssueList.Add(InvalidIssue($"Observation.Code.Coding.System must be \"${CodeSystemUrl.Snomed}\""));
                    }

                    if (TryFind(bundle, entryRef: observation.Subject) is Patient patient)
                    {
                        // Validate Patient
                        var hasName = patient.Name.Any(name => name.Given.Any() && name.Family.Any());
                        var hasDob = patient.BirthDate != null;
                        var hasPostalcode = patient.Address.Any(address => address.PostalCode != null);

                        if (!(hasName && hasDob && hasPostalcode))
                        {
                            IssueList.Add(InvalidIssue($"Patient does not include required data: given name, family name, date of birth and postal code"));
                        }
                    }
                    else
                    {
                        IssueList.Add(InvalidIssue($"Observation.Subject does not reference an Patient resource in the bundle"));
                    }

                    if (!(TryFind(bundle, entryRef: observation.Encounter) is Encounter))
                    {
                        IssueList.Add(InvalidIssue($"Observation.Encounter does not reference an Encounter resource in the bundle"));
                    }
                    if (!(TryFind(bundle, entryRef: observation.Device) is Device))
                    {
                        IssueList.Add(InvalidIssue($"Observation.Device does not reference an Device resource in the bundle"));
                    }
                    if (!(TryFind(bundle, entryRef: observation.Specimen) is Specimen))
                    {
                        IssueList.Add(InvalidIssue($"Observation.Specimen does not reference an Specimen resource in the bundle"));
                    }
                    if (TryFind(bundle, entryRef: observation.BasedOn.FirstOrDefault()) is Media media
                        && !(TryFind(bundle, entryRef: media.Device) is Device))
                    {
                        IssueList.Add(InvalidIssue($"Media.Device does not reference an Device resource in the bundle"));
                    }                   
                }
                else
                {
                    IssueList.Add(InvalidIssue($"DiagnosticReport.Result does not reference an Observation resource in the bundle"));
                }
            }
            else
            {
                IssueList.Add(InvalidIssue($"MessageHeader.Focus does not reference a DiagnosticReport resource in the bundle"));
            }
        }





        const string PathologyTestCode = "371528001";
        private static class CodeSystemUrl
        {
            public static string Snomed => "http://snomed.info/sct";
        }

        private OperationOutcome.IssueComponent InvalidIssue(string message)
        {
            return Tools.FhirOperationOutcomeSupport.CreateIssue(OperationOutcome.IssueSeverity.Error, OperationOutcome.IssueType.Invalid, message);
        }

        private Resource TryFind(Bundle bundle, ResourceReference entryRef)
        {
            if (entryRef is null)
                return null;

            return bundle.FindEntry(entryRef).FirstOrDefault()?.Resource;
        }

    }
}
