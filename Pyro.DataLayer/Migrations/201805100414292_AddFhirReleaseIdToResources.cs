namespace Pyro.DataLayer.Migrations
{
    using System;
    using System.Data.Entity.Migrations;
    
    public partial class AddFhirReleaseIdToResources : DbMigration
    {
        public override void Up()
        {
            AddColumn("dbo.AccountRes", "FhirReleaseId", c => c.Int());
            AddColumn("dbo.ActivityDefinitionRes", "FhirReleaseId", c => c.Int());
            AddColumn("dbo.AdverseEventRes", "FhirReleaseId", c => c.Int());
            AddColumn("dbo.AllergyIntoleranceRes", "FhirReleaseId", c => c.Int());
            AddColumn("dbo.AppointmentRes", "FhirReleaseId", c => c.Int());
            AddColumn("dbo.AppointmentResponseRes", "FhirReleaseId", c => c.Int());
            AddColumn("dbo.AuditEventRes", "FhirReleaseId", c => c.Int());
            AddColumn("dbo.BasicRes", "FhirReleaseId", c => c.Int());
            AddColumn("dbo.BinaryRes", "FhirReleaseId", c => c.Int());
            AddColumn("dbo.BodySiteRes", "FhirReleaseId", c => c.Int());
            AddColumn("dbo.BundleRes", "FhirReleaseId", c => c.Int());
            AddColumn("dbo.CapabilityStatementRes", "FhirReleaseId", c => c.Int());
            AddColumn("dbo.CarePlanRes", "FhirReleaseId", c => c.Int());
            AddColumn("dbo.CareTeamRes", "FhirReleaseId", c => c.Int());
            AddColumn("dbo.ChargeItemRes", "FhirReleaseId", c => c.Int());
            AddColumn("dbo.ClaimRes", "FhirReleaseId", c => c.Int());
            AddColumn("dbo.ClaimResponseRes", "FhirReleaseId", c => c.Int());
            AddColumn("dbo.ClinicalImpressionRes", "FhirReleaseId", c => c.Int());
            AddColumn("dbo.CodeSystemRes", "FhirReleaseId", c => c.Int());
            AddColumn("dbo.CommunicationRes", "FhirReleaseId", c => c.Int());
            AddColumn("dbo.CommunicationRequestRes", "FhirReleaseId", c => c.Int());
            AddColumn("dbo.CompartmentDefinitionRes", "FhirReleaseId", c => c.Int());
            AddColumn("dbo.CompositionRes", "FhirReleaseId", c => c.Int());
            AddColumn("dbo.ConceptMapRes", "FhirReleaseId", c => c.Int());
            AddColumn("dbo.ConditionRes", "FhirReleaseId", c => c.Int());
            AddColumn("dbo.ConsentRes", "FhirReleaseId", c => c.Int());
            AddColumn("dbo.ContractRes", "FhirReleaseId", c => c.Int());
            AddColumn("dbo.CoverageRes", "FhirReleaseId", c => c.Int());
            AddColumn("dbo.DataElementRes", "FhirReleaseId", c => c.Int());
            AddColumn("dbo.DetectedIssueRes", "FhirReleaseId", c => c.Int());
            AddColumn("dbo.DeviceRes", "FhirReleaseId", c => c.Int());
            AddColumn("dbo.DeviceComponentRes", "FhirReleaseId", c => c.Int());
            AddColumn("dbo.DeviceMetricRes", "FhirReleaseId", c => c.Int());
            AddColumn("dbo.DeviceRequestRes", "FhirReleaseId", c => c.Int());
            AddColumn("dbo.DeviceUseStatementRes", "FhirReleaseId", c => c.Int());
            AddColumn("dbo.DiagnosticReportRes", "FhirReleaseId", c => c.Int());
            AddColumn("dbo.DocumentManifestRes", "FhirReleaseId", c => c.Int());
            AddColumn("dbo.DocumentReferenceRes", "FhirReleaseId", c => c.Int());
            AddColumn("dbo.EligibilityRequestRes", "FhirReleaseId", c => c.Int());
            AddColumn("dbo.EligibilityResponseRes", "FhirReleaseId", c => c.Int());
            AddColumn("dbo.EncounterRes", "FhirReleaseId", c => c.Int());
            AddColumn("dbo.EndpointRes", "FhirReleaseId", c => c.Int());
            AddColumn("dbo.EnrollmentRequestRes", "FhirReleaseId", c => c.Int());
            AddColumn("dbo.EnrollmentResponseRes", "FhirReleaseId", c => c.Int());
            AddColumn("dbo.EpisodeOfCareRes", "FhirReleaseId", c => c.Int());
            AddColumn("dbo.ExpansionProfileRes", "FhirReleaseId", c => c.Int());
            AddColumn("dbo.ExplanationOfBenefitRes", "FhirReleaseId", c => c.Int());
            AddColumn("dbo.FamilyMemberHistoryRes", "FhirReleaseId", c => c.Int());
            AddColumn("dbo.FlagRes", "FhirReleaseId", c => c.Int());
            AddColumn("dbo.GoalRes", "FhirReleaseId", c => c.Int());
            AddColumn("dbo.GraphDefinitionRes", "FhirReleaseId", c => c.Int());
            AddColumn("dbo.GroupRes", "FhirReleaseId", c => c.Int());
            AddColumn("dbo.GuidanceResponseRes", "FhirReleaseId", c => c.Int());
            AddColumn("dbo.HealthcareServiceRes", "FhirReleaseId", c => c.Int());
            AddColumn("dbo.ImagingManifestRes", "FhirReleaseId", c => c.Int());
            AddColumn("dbo.ImagingStudyRes", "FhirReleaseId", c => c.Int());
            AddColumn("dbo.ImmunizationRes", "FhirReleaseId", c => c.Int());
            AddColumn("dbo.ImmunizationRecommendationRes", "FhirReleaseId", c => c.Int());
            AddColumn("dbo.ImplementationGuideRes", "FhirReleaseId", c => c.Int());
            AddColumn("dbo.LibraryRes", "FhirReleaseId", c => c.Int());
            AddColumn("dbo.LinkageRes", "FhirReleaseId", c => c.Int());
            AddColumn("dbo.ListRes", "FhirReleaseId", c => c.Int());
            AddColumn("dbo.LocationRes", "FhirReleaseId", c => c.Int());
            AddColumn("dbo.MeasureRes", "FhirReleaseId", c => c.Int());
            AddColumn("dbo.MeasureReportRes", "FhirReleaseId", c => c.Int());
            AddColumn("dbo.MediaRes", "FhirReleaseId", c => c.Int());
            AddColumn("dbo.MedicationRes", "FhirReleaseId", c => c.Int());
            AddColumn("dbo.MedicationAdministrationRes", "FhirReleaseId", c => c.Int());
            AddColumn("dbo.MedicationDispenseRes", "FhirReleaseId", c => c.Int());
            AddColumn("dbo.MedicationRequestRes", "FhirReleaseId", c => c.Int());
            AddColumn("dbo.MedicationStatementRes", "FhirReleaseId", c => c.Int());
            AddColumn("dbo.MessageDefinitionRes", "FhirReleaseId", c => c.Int());
            AddColumn("dbo.MessageHeaderRes", "FhirReleaseId", c => c.Int());
            AddColumn("dbo.NamingSystemRes", "FhirReleaseId", c => c.Int());
            AddColumn("dbo.NutritionOrderRes", "FhirReleaseId", c => c.Int());
            AddColumn("dbo.ObservationRes", "FhirReleaseId", c => c.Int());
            AddColumn("dbo.OperationDefinitionRes", "FhirReleaseId", c => c.Int());
            AddColumn("dbo.OperationOutcomeRes", "FhirReleaseId", c => c.Int());
            AddColumn("dbo.OrganizationRes", "FhirReleaseId", c => c.Int());
            AddColumn("dbo.ParametersRes", "FhirReleaseId", c => c.Int());
            AddColumn("dbo.PatientRes", "FhirReleaseId", c => c.Int());
            AddColumn("dbo.PaymentNoticeRes", "FhirReleaseId", c => c.Int());
            AddColumn("dbo.PaymentReconciliationRes", "FhirReleaseId", c => c.Int());
            AddColumn("dbo.PersonRes", "FhirReleaseId", c => c.Int());
            AddColumn("dbo.PlanDefinitionRes", "FhirReleaseId", c => c.Int());
            AddColumn("dbo.PractitionerRes", "FhirReleaseId", c => c.Int());
            AddColumn("dbo.PractitionerRoleRes", "FhirReleaseId", c => c.Int());
            AddColumn("dbo.ProcedureRes", "FhirReleaseId", c => c.Int());
            AddColumn("dbo.ProcedureRequestRes", "FhirReleaseId", c => c.Int());
            AddColumn("dbo.ProcessRequestRes", "FhirReleaseId", c => c.Int());
            AddColumn("dbo.ProcessResponseRes", "FhirReleaseId", c => c.Int());
            AddColumn("dbo.ProvenanceRes", "FhirReleaseId", c => c.Int());
            AddColumn("dbo.QuestionnaireRes", "FhirReleaseId", c => c.Int());
            AddColumn("dbo.QuestionnaireResponseRes", "FhirReleaseId", c => c.Int());
            AddColumn("dbo.ReferralRequestRes", "FhirReleaseId", c => c.Int());
            AddColumn("dbo.RelatedPersonRes", "FhirReleaseId", c => c.Int());
            AddColumn("dbo.RequestGroupRes", "FhirReleaseId", c => c.Int());
            AddColumn("dbo.ResearchStudyRes", "FhirReleaseId", c => c.Int());
            AddColumn("dbo.ResearchSubjectRes", "FhirReleaseId", c => c.Int());
            AddColumn("dbo.RiskAssessmentRes", "FhirReleaseId", c => c.Int());
            AddColumn("dbo.ScheduleRes", "FhirReleaseId", c => c.Int());
            AddColumn("dbo.SearchParameterRes", "FhirReleaseId", c => c.Int());
            AddColumn("dbo.SequenceRes", "FhirReleaseId", c => c.Int());
            AddColumn("dbo.ServiceDefinitionRes", "FhirReleaseId", c => c.Int());
            AddColumn("dbo.SlotRes", "FhirReleaseId", c => c.Int());
            AddColumn("dbo.SpecimenRes", "FhirReleaseId", c => c.Int());
            AddColumn("dbo.StructureDefinitionRes", "FhirReleaseId", c => c.Int());
            AddColumn("dbo.StructureMapRes", "FhirReleaseId", c => c.Int());
            AddColumn("dbo.SubscriptionRes", "FhirReleaseId", c => c.Int());
            AddColumn("dbo.SubstanceRes", "FhirReleaseId", c => c.Int());
            AddColumn("dbo.SupplyDeliveryRes", "FhirReleaseId", c => c.Int());
            AddColumn("dbo.SupplyRequestRes", "FhirReleaseId", c => c.Int());
            AddColumn("dbo.TaskRes", "FhirReleaseId", c => c.Int());
            AddColumn("dbo.TestReportRes", "FhirReleaseId", c => c.Int());
            AddColumn("dbo.TestScriptRes", "FhirReleaseId", c => c.Int());
            AddColumn("dbo.ValueSetRes", "FhirReleaseId", c => c.Int());
            AddColumn("dbo.VisionPrescriptionRes", "FhirReleaseId", c => c.Int());
        }
        
        public override void Down()
        {
            DropColumn("dbo.VisionPrescriptionRes", "FhirReleaseId");
            DropColumn("dbo.ValueSetRes", "FhirReleaseId");
            DropColumn("dbo.TestScriptRes", "FhirReleaseId");
            DropColumn("dbo.TestReportRes", "FhirReleaseId");
            DropColumn("dbo.TaskRes", "FhirReleaseId");
            DropColumn("dbo.SupplyRequestRes", "FhirReleaseId");
            DropColumn("dbo.SupplyDeliveryRes", "FhirReleaseId");
            DropColumn("dbo.SubstanceRes", "FhirReleaseId");
            DropColumn("dbo.SubscriptionRes", "FhirReleaseId");
            DropColumn("dbo.StructureMapRes", "FhirReleaseId");
            DropColumn("dbo.StructureDefinitionRes", "FhirReleaseId");
            DropColumn("dbo.SpecimenRes", "FhirReleaseId");
            DropColumn("dbo.SlotRes", "FhirReleaseId");
            DropColumn("dbo.ServiceDefinitionRes", "FhirReleaseId");
            DropColumn("dbo.SequenceRes", "FhirReleaseId");
            DropColumn("dbo.SearchParameterRes", "FhirReleaseId");
            DropColumn("dbo.ScheduleRes", "FhirReleaseId");
            DropColumn("dbo.RiskAssessmentRes", "FhirReleaseId");
            DropColumn("dbo.ResearchSubjectRes", "FhirReleaseId");
            DropColumn("dbo.ResearchStudyRes", "FhirReleaseId");
            DropColumn("dbo.RequestGroupRes", "FhirReleaseId");
            DropColumn("dbo.RelatedPersonRes", "FhirReleaseId");
            DropColumn("dbo.ReferralRequestRes", "FhirReleaseId");
            DropColumn("dbo.QuestionnaireResponseRes", "FhirReleaseId");
            DropColumn("dbo.QuestionnaireRes", "FhirReleaseId");
            DropColumn("dbo.ProvenanceRes", "FhirReleaseId");
            DropColumn("dbo.ProcessResponseRes", "FhirReleaseId");
            DropColumn("dbo.ProcessRequestRes", "FhirReleaseId");
            DropColumn("dbo.ProcedureRequestRes", "FhirReleaseId");
            DropColumn("dbo.ProcedureRes", "FhirReleaseId");
            DropColumn("dbo.PractitionerRoleRes", "FhirReleaseId");
            DropColumn("dbo.PractitionerRes", "FhirReleaseId");
            DropColumn("dbo.PlanDefinitionRes", "FhirReleaseId");
            DropColumn("dbo.PersonRes", "FhirReleaseId");
            DropColumn("dbo.PaymentReconciliationRes", "FhirReleaseId");
            DropColumn("dbo.PaymentNoticeRes", "FhirReleaseId");
            DropColumn("dbo.PatientRes", "FhirReleaseId");
            DropColumn("dbo.ParametersRes", "FhirReleaseId");
            DropColumn("dbo.OrganizationRes", "FhirReleaseId");
            DropColumn("dbo.OperationOutcomeRes", "FhirReleaseId");
            DropColumn("dbo.OperationDefinitionRes", "FhirReleaseId");
            DropColumn("dbo.ObservationRes", "FhirReleaseId");
            DropColumn("dbo.NutritionOrderRes", "FhirReleaseId");
            DropColumn("dbo.NamingSystemRes", "FhirReleaseId");
            DropColumn("dbo.MessageHeaderRes", "FhirReleaseId");
            DropColumn("dbo.MessageDefinitionRes", "FhirReleaseId");
            DropColumn("dbo.MedicationStatementRes", "FhirReleaseId");
            DropColumn("dbo.MedicationRequestRes", "FhirReleaseId");
            DropColumn("dbo.MedicationDispenseRes", "FhirReleaseId");
            DropColumn("dbo.MedicationAdministrationRes", "FhirReleaseId");
            DropColumn("dbo.MedicationRes", "FhirReleaseId");
            DropColumn("dbo.MediaRes", "FhirReleaseId");
            DropColumn("dbo.MeasureReportRes", "FhirReleaseId");
            DropColumn("dbo.MeasureRes", "FhirReleaseId");
            DropColumn("dbo.LocationRes", "FhirReleaseId");
            DropColumn("dbo.ListRes", "FhirReleaseId");
            DropColumn("dbo.LinkageRes", "FhirReleaseId");
            DropColumn("dbo.LibraryRes", "FhirReleaseId");
            DropColumn("dbo.ImplementationGuideRes", "FhirReleaseId");
            DropColumn("dbo.ImmunizationRecommendationRes", "FhirReleaseId");
            DropColumn("dbo.ImmunizationRes", "FhirReleaseId");
            DropColumn("dbo.ImagingStudyRes", "FhirReleaseId");
            DropColumn("dbo.ImagingManifestRes", "FhirReleaseId");
            DropColumn("dbo.HealthcareServiceRes", "FhirReleaseId");
            DropColumn("dbo.GuidanceResponseRes", "FhirReleaseId");
            DropColumn("dbo.GroupRes", "FhirReleaseId");
            DropColumn("dbo.GraphDefinitionRes", "FhirReleaseId");
            DropColumn("dbo.GoalRes", "FhirReleaseId");
            DropColumn("dbo.FlagRes", "FhirReleaseId");
            DropColumn("dbo.FamilyMemberHistoryRes", "FhirReleaseId");
            DropColumn("dbo.ExplanationOfBenefitRes", "FhirReleaseId");
            DropColumn("dbo.ExpansionProfileRes", "FhirReleaseId");
            DropColumn("dbo.EpisodeOfCareRes", "FhirReleaseId");
            DropColumn("dbo.EnrollmentResponseRes", "FhirReleaseId");
            DropColumn("dbo.EnrollmentRequestRes", "FhirReleaseId");
            DropColumn("dbo.EndpointRes", "FhirReleaseId");
            DropColumn("dbo.EncounterRes", "FhirReleaseId");
            DropColumn("dbo.EligibilityResponseRes", "FhirReleaseId");
            DropColumn("dbo.EligibilityRequestRes", "FhirReleaseId");
            DropColumn("dbo.DocumentReferenceRes", "FhirReleaseId");
            DropColumn("dbo.DocumentManifestRes", "FhirReleaseId");
            DropColumn("dbo.DiagnosticReportRes", "FhirReleaseId");
            DropColumn("dbo.DeviceUseStatementRes", "FhirReleaseId");
            DropColumn("dbo.DeviceRequestRes", "FhirReleaseId");
            DropColumn("dbo.DeviceMetricRes", "FhirReleaseId");
            DropColumn("dbo.DeviceComponentRes", "FhirReleaseId");
            DropColumn("dbo.DeviceRes", "FhirReleaseId");
            DropColumn("dbo.DetectedIssueRes", "FhirReleaseId");
            DropColumn("dbo.DataElementRes", "FhirReleaseId");
            DropColumn("dbo.CoverageRes", "FhirReleaseId");
            DropColumn("dbo.ContractRes", "FhirReleaseId");
            DropColumn("dbo.ConsentRes", "FhirReleaseId");
            DropColumn("dbo.ConditionRes", "FhirReleaseId");
            DropColumn("dbo.ConceptMapRes", "FhirReleaseId");
            DropColumn("dbo.CompositionRes", "FhirReleaseId");
            DropColumn("dbo.CompartmentDefinitionRes", "FhirReleaseId");
            DropColumn("dbo.CommunicationRequestRes", "FhirReleaseId");
            DropColumn("dbo.CommunicationRes", "FhirReleaseId");
            DropColumn("dbo.CodeSystemRes", "FhirReleaseId");
            DropColumn("dbo.ClinicalImpressionRes", "FhirReleaseId");
            DropColumn("dbo.ClaimResponseRes", "FhirReleaseId");
            DropColumn("dbo.ClaimRes", "FhirReleaseId");
            DropColumn("dbo.ChargeItemRes", "FhirReleaseId");
            DropColumn("dbo.CareTeamRes", "FhirReleaseId");
            DropColumn("dbo.CarePlanRes", "FhirReleaseId");
            DropColumn("dbo.CapabilityStatementRes", "FhirReleaseId");
            DropColumn("dbo.BundleRes", "FhirReleaseId");
            DropColumn("dbo.BodySiteRes", "FhirReleaseId");
            DropColumn("dbo.BinaryRes", "FhirReleaseId");
            DropColumn("dbo.BasicRes", "FhirReleaseId");
            DropColumn("dbo.AuditEventRes", "FhirReleaseId");
            DropColumn("dbo.AppointmentResponseRes", "FhirReleaseId");
            DropColumn("dbo.AppointmentRes", "FhirReleaseId");
            DropColumn("dbo.AllergyIntoleranceRes", "FhirReleaseId");
            DropColumn("dbo.AdverseEventRes", "FhirReleaseId");
            DropColumn("dbo.ActivityDefinitionRes", "FhirReleaseId");
            DropColumn("dbo.AccountRes", "FhirReleaseId");
        }
    }
}
