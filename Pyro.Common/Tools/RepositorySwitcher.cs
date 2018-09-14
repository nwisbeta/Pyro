﻿
using Hl7.Fhir.Model;
using Hl7.Fhir.Utility;
using Pyro.Common.Exceptions;
using Pyro.Common.Interfaces.Repositories;
using System.Net;

//This file was code generated by Pyro.CodeGeneration.Template.MainTemplate.tt
//Generation TimeStamp: 14/09/2018 3:55:21 PM

namespace Pyro.Common.Tools
{
  public class RepositorySwitcher : IRepositorySwitcher
  {
    private IUnitOfWork IUnitOfWork;
    public RepositorySwitcher(IUnitOfWork IUnitOfWork)
    {
      this.IUnitOfWork = IUnitOfWork;
    }

    public IResourceRepository GetRepository(FHIRAllTypes ResourceType)
    {
      switch (ResourceType)
      {
        case FHIRAllTypes.Account:
          return IUnitOfWork.AccountRepository;
        case FHIRAllTypes.ActivityDefinition:
          return IUnitOfWork.ActivityDefinitionRepository;
        case FHIRAllTypes.AdverseEvent:
          return IUnitOfWork.AdverseEventRepository;
        case FHIRAllTypes.AllergyIntolerance:
          return IUnitOfWork.AllergyIntoleranceRepository;
        case FHIRAllTypes.Appointment:
          return IUnitOfWork.AppointmentRepository;
        case FHIRAllTypes.AppointmentResponse:
          return IUnitOfWork.AppointmentResponseRepository;
        case FHIRAllTypes.AuditEvent:
          return IUnitOfWork.AuditEventRepository;
        case FHIRAllTypes.Basic:
          return IUnitOfWork.BasicRepository;
        case FHIRAllTypes.Binary:
          return IUnitOfWork.BinaryRepository;
        case FHIRAllTypes.BiologicallyDerivedProduct:
          return IUnitOfWork.BiologicallyDerivedProductRepository;
        case FHIRAllTypes.BodyStructure:
          return IUnitOfWork.BodyStructureRepository;
        case FHIRAllTypes.Bundle:
          return IUnitOfWork.BundleRepository;
        case FHIRAllTypes.CapabilityStatement:
          return IUnitOfWork.CapabilityStatementRepository;
        case FHIRAllTypes.CarePlan:
          return IUnitOfWork.CarePlanRepository;
        case FHIRAllTypes.CareTeam:
          return IUnitOfWork.CareTeamRepository;
        case FHIRAllTypes.ChargeItem:
          return IUnitOfWork.ChargeItemRepository;
        case FHIRAllTypes.ChargeItemDefinition:
          return IUnitOfWork.ChargeItemDefinitionRepository;
        case FHIRAllTypes.Claim:
          return IUnitOfWork.ClaimRepository;
        case FHIRAllTypes.ClaimResponse:
          return IUnitOfWork.ClaimResponseRepository;
        case FHIRAllTypes.ClinicalImpression:
          return IUnitOfWork.ClinicalImpressionRepository;
        case FHIRAllTypes.CodeSystem:
          return IUnitOfWork.CodeSystemRepository;
        case FHIRAllTypes.Communication:
          return IUnitOfWork.CommunicationRepository;
        case FHIRAllTypes.CommunicationRequest:
          return IUnitOfWork.CommunicationRequestRepository;
        case FHIRAllTypes.CompartmentDefinition:
          return IUnitOfWork.CompartmentDefinitionRepository;
        case FHIRAllTypes.Composition:
          return IUnitOfWork.CompositionRepository;
        case FHIRAllTypes.ConceptMap:
          return IUnitOfWork.ConceptMapRepository;
        case FHIRAllTypes.Condition:
          return IUnitOfWork.ConditionRepository;
        case FHIRAllTypes.Consent:
          return IUnitOfWork.ConsentRepository;
        case FHIRAllTypes.Contract:
          return IUnitOfWork.ContractRepository;
        case FHIRAllTypes.Coverage:
          return IUnitOfWork.CoverageRepository;
        case FHIRAllTypes.CoverageEligibilityRequest:
          return IUnitOfWork.CoverageEligibilityRequestRepository;
        case FHIRAllTypes.CoverageEligibilityResponse:
          return IUnitOfWork.CoverageEligibilityResponseRepository;
        case FHIRAllTypes.DetectedIssue:
          return IUnitOfWork.DetectedIssueRepository;
        case FHIRAllTypes.Device:
          return IUnitOfWork.DeviceRepository;
        case FHIRAllTypes.DeviceDefinition:
          return IUnitOfWork.DeviceDefinitionRepository;
        case FHIRAllTypes.DeviceMetric:
          return IUnitOfWork.DeviceMetricRepository;
        case FHIRAllTypes.DeviceRequest:
          return IUnitOfWork.DeviceRequestRepository;
        case FHIRAllTypes.DeviceUseStatement:
          return IUnitOfWork.DeviceUseStatementRepository;
        case FHIRAllTypes.DiagnosticReport:
          return IUnitOfWork.DiagnosticReportRepository;
        case FHIRAllTypes.DocumentManifest:
          return IUnitOfWork.DocumentManifestRepository;
        case FHIRAllTypes.DocumentReference:
          return IUnitOfWork.DocumentReferenceRepository;
        case FHIRAllTypes.Encounter:
          return IUnitOfWork.EncounterRepository;
        case FHIRAllTypes.Endpoint:
          return IUnitOfWork.EndpointRepository;
        case FHIRAllTypes.EnrollmentRequest:
          return IUnitOfWork.EnrollmentRequestRepository;
        case FHIRAllTypes.EnrollmentResponse:
          return IUnitOfWork.EnrollmentResponseRepository;
        case FHIRAllTypes.EntryDefinition:
          return IUnitOfWork.EntryDefinitionRepository;
        case FHIRAllTypes.EpisodeOfCare:
          return IUnitOfWork.EpisodeOfCareRepository;
        case FHIRAllTypes.EventDefinition:
          return IUnitOfWork.EventDefinitionRepository;
        case FHIRAllTypes.ExampleScenario:
          return IUnitOfWork.ExampleScenarioRepository;
        case FHIRAllTypes.ExplanationOfBenefit:
          return IUnitOfWork.ExplanationOfBenefitRepository;
        case FHIRAllTypes.FamilyMemberHistory:
          return IUnitOfWork.FamilyMemberHistoryRepository;
        case FHIRAllTypes.Flag:
          return IUnitOfWork.FlagRepository;
        case FHIRAllTypes.Goal:
          return IUnitOfWork.GoalRepository;
        case FHIRAllTypes.GraphDefinition:
          return IUnitOfWork.GraphDefinitionRepository;
        case FHIRAllTypes.Group:
          return IUnitOfWork.GroupRepository;
        case FHIRAllTypes.GuidanceResponse:
          return IUnitOfWork.GuidanceResponseRepository;
        case FHIRAllTypes.HealthcareService:
          return IUnitOfWork.HealthcareServiceRepository;
        case FHIRAllTypes.ImagingStudy:
          return IUnitOfWork.ImagingStudyRepository;
        case FHIRAllTypes.Immunization:
          return IUnitOfWork.ImmunizationRepository;
        case FHIRAllTypes.ImmunizationEvaluation:
          return IUnitOfWork.ImmunizationEvaluationRepository;
        case FHIRAllTypes.ImmunizationRecommendation:
          return IUnitOfWork.ImmunizationRecommendationRepository;
        case FHIRAllTypes.ImplementationGuide:
          return IUnitOfWork.ImplementationGuideRepository;
        case FHIRAllTypes.InsurancePlan:
          return IUnitOfWork.InsurancePlanRepository;
        case FHIRAllTypes.Invoice:
          return IUnitOfWork.InvoiceRepository;
        case FHIRAllTypes.ItemInstance:
          return IUnitOfWork.ItemInstanceRepository;
        case FHIRAllTypes.Library:
          return IUnitOfWork.LibraryRepository;
        case FHIRAllTypes.Linkage:
          return IUnitOfWork.LinkageRepository;
        case FHIRAllTypes.List:
          return IUnitOfWork.ListRepository;
        case FHIRAllTypes.Location:
          return IUnitOfWork.LocationRepository;
        case FHIRAllTypes.Measure:
          return IUnitOfWork.MeasureRepository;
        case FHIRAllTypes.MeasureReport:
          return IUnitOfWork.MeasureReportRepository;
        case FHIRAllTypes.Media:
          return IUnitOfWork.MediaRepository;
        case FHIRAllTypes.Medication:
          return IUnitOfWork.MedicationRepository;
        case FHIRAllTypes.MedicationAdministration:
          return IUnitOfWork.MedicationAdministrationRepository;
        case FHIRAllTypes.MedicationDispense:
          return IUnitOfWork.MedicationDispenseRepository;
        case FHIRAllTypes.MedicationKnowledge:
          return IUnitOfWork.MedicationKnowledgeRepository;
        case FHIRAllTypes.MedicationRequest:
          return IUnitOfWork.MedicationRequestRepository;
        case FHIRAllTypes.MedicationStatement:
          return IUnitOfWork.MedicationStatementRepository;
        case FHIRAllTypes.MedicinalProduct:
          return IUnitOfWork.MedicinalProductRepository;
        case FHIRAllTypes.MedicinalProductAuthorization:
          return IUnitOfWork.MedicinalProductAuthorizationRepository;
        case FHIRAllTypes.MedicinalProductClinicals:
          return IUnitOfWork.MedicinalProductClinicalsRepository;
        case FHIRAllTypes.MedicinalProductContraindication:
          return IUnitOfWork.MedicinalProductContraindicationRepository;
        case FHIRAllTypes.MedicinalProductDeviceSpec:
          return IUnitOfWork.MedicinalProductDeviceSpecRepository;
        case FHIRAllTypes.MedicinalProductIndication:
          return IUnitOfWork.MedicinalProductIndicationRepository;
        case FHIRAllTypes.MedicinalProductIngredient:
          return IUnitOfWork.MedicinalProductIngredientRepository;
        case FHIRAllTypes.MedicinalProductInteraction:
          return IUnitOfWork.MedicinalProductInteractionRepository;
        case FHIRAllTypes.MedicinalProductManufactured:
          return IUnitOfWork.MedicinalProductManufacturedRepository;
        case FHIRAllTypes.MedicinalProductPackaged:
          return IUnitOfWork.MedicinalProductPackagedRepository;
        case FHIRAllTypes.MedicinalProductPharmaceutical:
          return IUnitOfWork.MedicinalProductPharmaceuticalRepository;
        case FHIRAllTypes.MedicinalProductUndesirableEffect:
          return IUnitOfWork.MedicinalProductUndesirableEffectRepository;
        case FHIRAllTypes.MessageDefinition:
          return IUnitOfWork.MessageDefinitionRepository;
        case FHIRAllTypes.MessageHeader:
          return IUnitOfWork.MessageHeaderRepository;
        case FHIRAllTypes.NamingSystem:
          return IUnitOfWork.NamingSystemRepository;
        case FHIRAllTypes.NutritionOrder:
          return IUnitOfWork.NutritionOrderRepository;
        case FHIRAllTypes.Observation:
          return IUnitOfWork.ObservationRepository;
        case FHIRAllTypes.ObservationDefinition:
          return IUnitOfWork.ObservationDefinitionRepository;
        case FHIRAllTypes.OperationDefinition:
          return IUnitOfWork.OperationDefinitionRepository;
        case FHIRAllTypes.OperationOutcome:
          return IUnitOfWork.OperationOutcomeRepository;
        case FHIRAllTypes.Organization:
          return IUnitOfWork.OrganizationRepository;
        case FHIRAllTypes.OrganizationAffiliation:
          return IUnitOfWork.OrganizationAffiliationRepository;
        case FHIRAllTypes.Parameters:
          return IUnitOfWork.ParametersRepository;
        case FHIRAllTypes.Patient:
          return IUnitOfWork.PatientRepository;
        case FHIRAllTypes.PaymentNotice:
          return IUnitOfWork.PaymentNoticeRepository;
        case FHIRAllTypes.PaymentReconciliation:
          return IUnitOfWork.PaymentReconciliationRepository;
        case FHIRAllTypes.Person:
          return IUnitOfWork.PersonRepository;
        case FHIRAllTypes.PlanDefinition:
          return IUnitOfWork.PlanDefinitionRepository;
        case FHIRAllTypes.Practitioner:
          return IUnitOfWork.PractitionerRepository;
        case FHIRAllTypes.PractitionerRole:
          return IUnitOfWork.PractitionerRoleRepository;
        case FHIRAllTypes.Procedure:
          return IUnitOfWork.ProcedureRepository;
        case FHIRAllTypes.ProcessRequest:
          return IUnitOfWork.ProcessRequestRepository;
        case FHIRAllTypes.ProcessResponse:
          return IUnitOfWork.ProcessResponseRepository;
        case FHIRAllTypes.Provenance:
          return IUnitOfWork.ProvenanceRepository;
        case FHIRAllTypes.Questionnaire:
          return IUnitOfWork.QuestionnaireRepository;
        case FHIRAllTypes.QuestionnaireResponse:
          return IUnitOfWork.QuestionnaireResponseRepository;
        case FHIRAllTypes.RelatedPerson:
          return IUnitOfWork.RelatedPersonRepository;
        case FHIRAllTypes.RequestGroup:
          return IUnitOfWork.RequestGroupRepository;
        case FHIRAllTypes.ResearchStudy:
          return IUnitOfWork.ResearchStudyRepository;
        case FHIRAllTypes.ResearchSubject:
          return IUnitOfWork.ResearchSubjectRepository;
        case FHIRAllTypes.RiskAssessment:
          return IUnitOfWork.RiskAssessmentRepository;
        case FHIRAllTypes.Schedule:
          return IUnitOfWork.ScheduleRepository;
        case FHIRAllTypes.SearchParameter:
          return IUnitOfWork.SearchParameterRepository;
        case FHIRAllTypes.Sequence:
          return IUnitOfWork.SequenceRepository;
        case FHIRAllTypes.ServiceRequest:
          return IUnitOfWork.ServiceRequestRepository;
        case FHIRAllTypes.Slot:
          return IUnitOfWork.SlotRepository;
        case FHIRAllTypes.Specimen:
          return IUnitOfWork.SpecimenRepository;
        case FHIRAllTypes.SpecimenDefinition:
          return IUnitOfWork.SpecimenDefinitionRepository;
        case FHIRAllTypes.StructureDefinition:
          return IUnitOfWork.StructureDefinitionRepository;
        case FHIRAllTypes.StructureMap:
          return IUnitOfWork.StructureMapRepository;
        case FHIRAllTypes.Subscription:
          return IUnitOfWork.SubscriptionRepository;
        case FHIRAllTypes.Substance:
          return IUnitOfWork.SubstanceRepository;
        case FHIRAllTypes.SubstancePolymer:
          return IUnitOfWork.SubstancePolymerRepository;
        case FHIRAllTypes.SubstanceReferenceInformation:
          return IUnitOfWork.SubstanceReferenceInformationRepository;
        case FHIRAllTypes.SubstanceSpecification:
          return IUnitOfWork.SubstanceSpecificationRepository;
        case FHIRAllTypes.SupplyDelivery:
          return IUnitOfWork.SupplyDeliveryRepository;
        case FHIRAllTypes.SupplyRequest:
          return IUnitOfWork.SupplyRequestRepository;
        case FHIRAllTypes.Task:
          return IUnitOfWork.TaskRepository;
        case FHIRAllTypes.TerminologyCapabilities:
          return IUnitOfWork.TerminologyCapabilitiesRepository;
        case FHIRAllTypes.TestReport:
          return IUnitOfWork.TestReportRepository;
        case FHIRAllTypes.TestScript:
          return IUnitOfWork.TestScriptRepository;
        case FHIRAllTypes.UserSession:
          return IUnitOfWork.UserSessionRepository;
        case FHIRAllTypes.ValueSet:
          return IUnitOfWork.ValueSetRepository;
        case FHIRAllTypes.VerificationResult:
          return IUnitOfWork.VerificationResultRepository;
        case FHIRAllTypes.VisionPrescription:
          return IUnitOfWork.VisionPrescriptionRepository;
  
        default:
          {
            string Message = $"The Resource name given: '{ResourceType.GetLiteral()}' has no matching server repository. ";
            var OpOutCome = FhirOperationOutcomeSupport.Create(OperationOutcome.IssueSeverity.Fatal, OperationOutcome.IssueType.Invalid, Message);
            throw new PyroException(HttpStatusCode.BadRequest, OpOutCome, Message);
          }
      }
    }
  }
}


