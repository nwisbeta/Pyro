﻿//This file was code generated by Pyro.CodeGeneration.Template.MainTemplate.tt
//Generation TimeStamp: 9/05/2018 2:00:31 PM
using System.Data.Entity.ModelConfiguration;
using Pyro.DataLayer.DbModel.Entity;
using Pyro.Common.Database;

namespace Pyro.DataLayer.DbModel.DatabaseContextConfig
{
  public class FhirReleaseContextConfig : EntityTypeConfiguration<_FhirRelease>
  {
    public FhirReleaseContextConfig()
    {
      HasKey(x => x.Id).Property(x => x.Id).IsRequired();
      Property(x => x.FhirVersion).IsRequired().HasMaxLength(StaticDatabaseInfo.BaseDatabaseFieldLength.FhirIdMaxLength);
      Property(x => x.Description).IsRequired().HasMaxLength(StaticDatabaseInfo.BaseDatabaseFieldLength.StringMaxLength);
      Property(x => x.Date).IsRequired();
      Property(x => x.CreatedDate).HasPrecision(StaticDatabaseInfo.BaseDatabaseFieldLength.DateTimeOffsetPrecision).IsRequired();
      Property(x => x.CreatedUser).IsRequired();
      Property(x => x.LastUpdated).HasPrecision(StaticDatabaseInfo.BaseDatabaseFieldLength.DateTimeOffsetPrecision).IsRequired();
      Property(x => x.LastUpdatedUser).IsRequired();

      HasMany(c => c.AccountList).WithRequired(c => c.FhirRelease).HasForeignKey(m => m.FhirReleaseId).WillCascadeOnDelete(false);
      HasMany(c => c.ActivityDefinitionList).WithRequired(c => c.FhirRelease).HasForeignKey(m => m.FhirReleaseId).WillCascadeOnDelete(false);
      HasMany(c => c.AdverseEventList).WithRequired(c => c.FhirRelease).HasForeignKey(m => m.FhirReleaseId).WillCascadeOnDelete(false);
      HasMany(c => c.AllergyIntoleranceList).WithRequired(c => c.FhirRelease).HasForeignKey(m => m.FhirReleaseId).WillCascadeOnDelete(false);
      HasMany(c => c.AppointmentList).WithRequired(c => c.FhirRelease).HasForeignKey(m => m.FhirReleaseId).WillCascadeOnDelete(false);
      HasMany(c => c.AppointmentResponseList).WithRequired(c => c.FhirRelease).HasForeignKey(m => m.FhirReleaseId).WillCascadeOnDelete(false);
      HasMany(c => c.AuditEventList).WithRequired(c => c.FhirRelease).HasForeignKey(m => m.FhirReleaseId).WillCascadeOnDelete(false);
      HasMany(c => c.BasicList).WithRequired(c => c.FhirRelease).HasForeignKey(m => m.FhirReleaseId).WillCascadeOnDelete(false);
      HasMany(c => c.BinaryList).WithRequired(c => c.FhirRelease).HasForeignKey(m => m.FhirReleaseId).WillCascadeOnDelete(false);
      HasMany(c => c.BodySiteList).WithRequired(c => c.FhirRelease).HasForeignKey(m => m.FhirReleaseId).WillCascadeOnDelete(false);
      HasMany(c => c.BundleList).WithRequired(c => c.FhirRelease).HasForeignKey(m => m.FhirReleaseId).WillCascadeOnDelete(false);
      HasMany(c => c.CapabilityStatementList).WithRequired(c => c.FhirRelease).HasForeignKey(m => m.FhirReleaseId).WillCascadeOnDelete(false);
      HasMany(c => c.CarePlanList).WithRequired(c => c.FhirRelease).HasForeignKey(m => m.FhirReleaseId).WillCascadeOnDelete(false);
      HasMany(c => c.CareTeamList).WithRequired(c => c.FhirRelease).HasForeignKey(m => m.FhirReleaseId).WillCascadeOnDelete(false);
      HasMany(c => c.ChargeItemList).WithRequired(c => c.FhirRelease).HasForeignKey(m => m.FhirReleaseId).WillCascadeOnDelete(false);
      HasMany(c => c.ClaimList).WithRequired(c => c.FhirRelease).HasForeignKey(m => m.FhirReleaseId).WillCascadeOnDelete(false);
      HasMany(c => c.ClaimResponseList).WithRequired(c => c.FhirRelease).HasForeignKey(m => m.FhirReleaseId).WillCascadeOnDelete(false);
      HasMany(c => c.ClinicalImpressionList).WithRequired(c => c.FhirRelease).HasForeignKey(m => m.FhirReleaseId).WillCascadeOnDelete(false);
      HasMany(c => c.CodeSystemList).WithRequired(c => c.FhirRelease).HasForeignKey(m => m.FhirReleaseId).WillCascadeOnDelete(false);
      HasMany(c => c.CommunicationList).WithRequired(c => c.FhirRelease).HasForeignKey(m => m.FhirReleaseId).WillCascadeOnDelete(false);
      HasMany(c => c.CommunicationRequestList).WithRequired(c => c.FhirRelease).HasForeignKey(m => m.FhirReleaseId).WillCascadeOnDelete(false);
      HasMany(c => c.CompartmentDefinitionList).WithRequired(c => c.FhirRelease).HasForeignKey(m => m.FhirReleaseId).WillCascadeOnDelete(false);
      HasMany(c => c.CompositionList).WithRequired(c => c.FhirRelease).HasForeignKey(m => m.FhirReleaseId).WillCascadeOnDelete(false);
      HasMany(c => c.ConceptMapList).WithRequired(c => c.FhirRelease).HasForeignKey(m => m.FhirReleaseId).WillCascadeOnDelete(false);
      HasMany(c => c.ConditionList).WithRequired(c => c.FhirRelease).HasForeignKey(m => m.FhirReleaseId).WillCascadeOnDelete(false);
      HasMany(c => c.ConsentList).WithRequired(c => c.FhirRelease).HasForeignKey(m => m.FhirReleaseId).WillCascadeOnDelete(false);
      HasMany(c => c.ContractList).WithRequired(c => c.FhirRelease).HasForeignKey(m => m.FhirReleaseId).WillCascadeOnDelete(false);
      HasMany(c => c.CoverageList).WithRequired(c => c.FhirRelease).HasForeignKey(m => m.FhirReleaseId).WillCascadeOnDelete(false);
      HasMany(c => c.DataElementList).WithRequired(c => c.FhirRelease).HasForeignKey(m => m.FhirReleaseId).WillCascadeOnDelete(false);
      HasMany(c => c.DetectedIssueList).WithRequired(c => c.FhirRelease).HasForeignKey(m => m.FhirReleaseId).WillCascadeOnDelete(false);
      HasMany(c => c.DeviceList).WithRequired(c => c.FhirRelease).HasForeignKey(m => m.FhirReleaseId).WillCascadeOnDelete(false);
      HasMany(c => c.DeviceComponentList).WithRequired(c => c.FhirRelease).HasForeignKey(m => m.FhirReleaseId).WillCascadeOnDelete(false);
      HasMany(c => c.DeviceMetricList).WithRequired(c => c.FhirRelease).HasForeignKey(m => m.FhirReleaseId).WillCascadeOnDelete(false);
      HasMany(c => c.DeviceRequestList).WithRequired(c => c.FhirRelease).HasForeignKey(m => m.FhirReleaseId).WillCascadeOnDelete(false);
      HasMany(c => c.DeviceUseStatementList).WithRequired(c => c.FhirRelease).HasForeignKey(m => m.FhirReleaseId).WillCascadeOnDelete(false);
      HasMany(c => c.DiagnosticReportList).WithRequired(c => c.FhirRelease).HasForeignKey(m => m.FhirReleaseId).WillCascadeOnDelete(false);
      HasMany(c => c.DocumentManifestList).WithRequired(c => c.FhirRelease).HasForeignKey(m => m.FhirReleaseId).WillCascadeOnDelete(false);
      HasMany(c => c.DocumentReferenceList).WithRequired(c => c.FhirRelease).HasForeignKey(m => m.FhirReleaseId).WillCascadeOnDelete(false);
      HasMany(c => c.EligibilityRequestList).WithRequired(c => c.FhirRelease).HasForeignKey(m => m.FhirReleaseId).WillCascadeOnDelete(false);
      HasMany(c => c.EligibilityResponseList).WithRequired(c => c.FhirRelease).HasForeignKey(m => m.FhirReleaseId).WillCascadeOnDelete(false);
      HasMany(c => c.EncounterList).WithRequired(c => c.FhirRelease).HasForeignKey(m => m.FhirReleaseId).WillCascadeOnDelete(false);
      HasMany(c => c.EndpointList).WithRequired(c => c.FhirRelease).HasForeignKey(m => m.FhirReleaseId).WillCascadeOnDelete(false);
      HasMany(c => c.EnrollmentRequestList).WithRequired(c => c.FhirRelease).HasForeignKey(m => m.FhirReleaseId).WillCascadeOnDelete(false);
      HasMany(c => c.EnrollmentResponseList).WithRequired(c => c.FhirRelease).HasForeignKey(m => m.FhirReleaseId).WillCascadeOnDelete(false);
      HasMany(c => c.EpisodeOfCareList).WithRequired(c => c.FhirRelease).HasForeignKey(m => m.FhirReleaseId).WillCascadeOnDelete(false);
      HasMany(c => c.ExpansionProfileList).WithRequired(c => c.FhirRelease).HasForeignKey(m => m.FhirReleaseId).WillCascadeOnDelete(false);
      HasMany(c => c.ExplanationOfBenefitList).WithRequired(c => c.FhirRelease).HasForeignKey(m => m.FhirReleaseId).WillCascadeOnDelete(false);
      HasMany(c => c.FamilyMemberHistoryList).WithRequired(c => c.FhirRelease).HasForeignKey(m => m.FhirReleaseId).WillCascadeOnDelete(false);
      HasMany(c => c.FlagList).WithRequired(c => c.FhirRelease).HasForeignKey(m => m.FhirReleaseId).WillCascadeOnDelete(false);
      HasMany(c => c.GoalList).WithRequired(c => c.FhirRelease).HasForeignKey(m => m.FhirReleaseId).WillCascadeOnDelete(false);
      HasMany(c => c.GraphDefinitionList).WithRequired(c => c.FhirRelease).HasForeignKey(m => m.FhirReleaseId).WillCascadeOnDelete(false);
      HasMany(c => c.GroupList).WithRequired(c => c.FhirRelease).HasForeignKey(m => m.FhirReleaseId).WillCascadeOnDelete(false);
      HasMany(c => c.GuidanceResponseList).WithRequired(c => c.FhirRelease).HasForeignKey(m => m.FhirReleaseId).WillCascadeOnDelete(false);
      HasMany(c => c.HealthcareServiceList).WithRequired(c => c.FhirRelease).HasForeignKey(m => m.FhirReleaseId).WillCascadeOnDelete(false);
      HasMany(c => c.ImagingManifestList).WithRequired(c => c.FhirRelease).HasForeignKey(m => m.FhirReleaseId).WillCascadeOnDelete(false);
      HasMany(c => c.ImagingStudyList).WithRequired(c => c.FhirRelease).HasForeignKey(m => m.FhirReleaseId).WillCascadeOnDelete(false);
      HasMany(c => c.ImmunizationList).WithRequired(c => c.FhirRelease).HasForeignKey(m => m.FhirReleaseId).WillCascadeOnDelete(false);
      HasMany(c => c.ImmunizationRecommendationList).WithRequired(c => c.FhirRelease).HasForeignKey(m => m.FhirReleaseId).WillCascadeOnDelete(false);
      HasMany(c => c.ImplementationGuideList).WithRequired(c => c.FhirRelease).HasForeignKey(m => m.FhirReleaseId).WillCascadeOnDelete(false);
      HasMany(c => c.LibraryList).WithRequired(c => c.FhirRelease).HasForeignKey(m => m.FhirReleaseId).WillCascadeOnDelete(false);
      HasMany(c => c.LinkageList).WithRequired(c => c.FhirRelease).HasForeignKey(m => m.FhirReleaseId).WillCascadeOnDelete(false);
      HasMany(c => c.ListList).WithRequired(c => c.FhirRelease).HasForeignKey(m => m.FhirReleaseId).WillCascadeOnDelete(false);
      HasMany(c => c.LocationList).WithRequired(c => c.FhirRelease).HasForeignKey(m => m.FhirReleaseId).WillCascadeOnDelete(false);
      HasMany(c => c.MeasureList).WithRequired(c => c.FhirRelease).HasForeignKey(m => m.FhirReleaseId).WillCascadeOnDelete(false);
      HasMany(c => c.MeasureReportList).WithRequired(c => c.FhirRelease).HasForeignKey(m => m.FhirReleaseId).WillCascadeOnDelete(false);
      HasMany(c => c.MediaList).WithRequired(c => c.FhirRelease).HasForeignKey(m => m.FhirReleaseId).WillCascadeOnDelete(false);
      HasMany(c => c.MedicationList).WithRequired(c => c.FhirRelease).HasForeignKey(m => m.FhirReleaseId).WillCascadeOnDelete(false);
      HasMany(c => c.MedicationAdministrationList).WithRequired(c => c.FhirRelease).HasForeignKey(m => m.FhirReleaseId).WillCascadeOnDelete(false);
      HasMany(c => c.MedicationDispenseList).WithRequired(c => c.FhirRelease).HasForeignKey(m => m.FhirReleaseId).WillCascadeOnDelete(false);
      HasMany(c => c.MedicationRequestList).WithRequired(c => c.FhirRelease).HasForeignKey(m => m.FhirReleaseId).WillCascadeOnDelete(false);
      HasMany(c => c.MedicationStatementList).WithRequired(c => c.FhirRelease).HasForeignKey(m => m.FhirReleaseId).WillCascadeOnDelete(false);
      HasMany(c => c.MessageDefinitionList).WithRequired(c => c.FhirRelease).HasForeignKey(m => m.FhirReleaseId).WillCascadeOnDelete(false);
      HasMany(c => c.MessageHeaderList).WithRequired(c => c.FhirRelease).HasForeignKey(m => m.FhirReleaseId).WillCascadeOnDelete(false);
      HasMany(c => c.NamingSystemList).WithRequired(c => c.FhirRelease).HasForeignKey(m => m.FhirReleaseId).WillCascadeOnDelete(false);
      HasMany(c => c.NutritionOrderList).WithRequired(c => c.FhirRelease).HasForeignKey(m => m.FhirReleaseId).WillCascadeOnDelete(false);
      HasMany(c => c.ObservationList).WithRequired(c => c.FhirRelease).HasForeignKey(m => m.FhirReleaseId).WillCascadeOnDelete(false);
      HasMany(c => c.OperationDefinitionList).WithRequired(c => c.FhirRelease).HasForeignKey(m => m.FhirReleaseId).WillCascadeOnDelete(false);
      HasMany(c => c.OperationOutcomeList).WithRequired(c => c.FhirRelease).HasForeignKey(m => m.FhirReleaseId).WillCascadeOnDelete(false);
      HasMany(c => c.OrganizationList).WithRequired(c => c.FhirRelease).HasForeignKey(m => m.FhirReleaseId).WillCascadeOnDelete(false);
      HasMany(c => c.ParametersList).WithRequired(c => c.FhirRelease).HasForeignKey(m => m.FhirReleaseId).WillCascadeOnDelete(false);
      HasMany(c => c.PatientList).WithRequired(c => c.FhirRelease).HasForeignKey(m => m.FhirReleaseId).WillCascadeOnDelete(false);
      HasMany(c => c.PaymentNoticeList).WithRequired(c => c.FhirRelease).HasForeignKey(m => m.FhirReleaseId).WillCascadeOnDelete(false);
      HasMany(c => c.PaymentReconciliationList).WithRequired(c => c.FhirRelease).HasForeignKey(m => m.FhirReleaseId).WillCascadeOnDelete(false);
      HasMany(c => c.PersonList).WithRequired(c => c.FhirRelease).HasForeignKey(m => m.FhirReleaseId).WillCascadeOnDelete(false);
      HasMany(c => c.PlanDefinitionList).WithRequired(c => c.FhirRelease).HasForeignKey(m => m.FhirReleaseId).WillCascadeOnDelete(false);
      HasMany(c => c.PractitionerList).WithRequired(c => c.FhirRelease).HasForeignKey(m => m.FhirReleaseId).WillCascadeOnDelete(false);
      HasMany(c => c.PractitionerRoleList).WithRequired(c => c.FhirRelease).HasForeignKey(m => m.FhirReleaseId).WillCascadeOnDelete(false);
      HasMany(c => c.ProcedureList).WithRequired(c => c.FhirRelease).HasForeignKey(m => m.FhirReleaseId).WillCascadeOnDelete(false);
      HasMany(c => c.ProcedureRequestList).WithRequired(c => c.FhirRelease).HasForeignKey(m => m.FhirReleaseId).WillCascadeOnDelete(false);
      HasMany(c => c.ProcessRequestList).WithRequired(c => c.FhirRelease).HasForeignKey(m => m.FhirReleaseId).WillCascadeOnDelete(false);
      HasMany(c => c.ProcessResponseList).WithRequired(c => c.FhirRelease).HasForeignKey(m => m.FhirReleaseId).WillCascadeOnDelete(false);
      HasMany(c => c.ProvenanceList).WithRequired(c => c.FhirRelease).HasForeignKey(m => m.FhirReleaseId).WillCascadeOnDelete(false);
      HasMany(c => c.QuestionnaireList).WithRequired(c => c.FhirRelease).HasForeignKey(m => m.FhirReleaseId).WillCascadeOnDelete(false);
      HasMany(c => c.QuestionnaireResponseList).WithRequired(c => c.FhirRelease).HasForeignKey(m => m.FhirReleaseId).WillCascadeOnDelete(false);
      HasMany(c => c.ReferralRequestList).WithRequired(c => c.FhirRelease).HasForeignKey(m => m.FhirReleaseId).WillCascadeOnDelete(false);
      HasMany(c => c.RelatedPersonList).WithRequired(c => c.FhirRelease).HasForeignKey(m => m.FhirReleaseId).WillCascadeOnDelete(false);
      HasMany(c => c.RequestGroupList).WithRequired(c => c.FhirRelease).HasForeignKey(m => m.FhirReleaseId).WillCascadeOnDelete(false);
      HasMany(c => c.ResearchStudyList).WithRequired(c => c.FhirRelease).HasForeignKey(m => m.FhirReleaseId).WillCascadeOnDelete(false);
      HasMany(c => c.ResearchSubjectList).WithRequired(c => c.FhirRelease).HasForeignKey(m => m.FhirReleaseId).WillCascadeOnDelete(false);
      HasMany(c => c.RiskAssessmentList).WithRequired(c => c.FhirRelease).HasForeignKey(m => m.FhirReleaseId).WillCascadeOnDelete(false);
      HasMany(c => c.ScheduleList).WithRequired(c => c.FhirRelease).HasForeignKey(m => m.FhirReleaseId).WillCascadeOnDelete(false);
      HasMany(c => c.SearchParameterList).WithRequired(c => c.FhirRelease).HasForeignKey(m => m.FhirReleaseId).WillCascadeOnDelete(false);
      HasMany(c => c.SequenceList).WithRequired(c => c.FhirRelease).HasForeignKey(m => m.FhirReleaseId).WillCascadeOnDelete(false);
      HasMany(c => c.ServiceDefinitionList).WithRequired(c => c.FhirRelease).HasForeignKey(m => m.FhirReleaseId).WillCascadeOnDelete(false);
      HasMany(c => c.SlotList).WithRequired(c => c.FhirRelease).HasForeignKey(m => m.FhirReleaseId).WillCascadeOnDelete(false);
      HasMany(c => c.SpecimenList).WithRequired(c => c.FhirRelease).HasForeignKey(m => m.FhirReleaseId).WillCascadeOnDelete(false);
      HasMany(c => c.StructureDefinitionList).WithRequired(c => c.FhirRelease).HasForeignKey(m => m.FhirReleaseId).WillCascadeOnDelete(false);
      HasMany(c => c.StructureMapList).WithRequired(c => c.FhirRelease).HasForeignKey(m => m.FhirReleaseId).WillCascadeOnDelete(false);
      HasMany(c => c.SubscriptionList).WithRequired(c => c.FhirRelease).HasForeignKey(m => m.FhirReleaseId).WillCascadeOnDelete(false);
      HasMany(c => c.SubstanceList).WithRequired(c => c.FhirRelease).HasForeignKey(m => m.FhirReleaseId).WillCascadeOnDelete(false);
      HasMany(c => c.SupplyDeliveryList).WithRequired(c => c.FhirRelease).HasForeignKey(m => m.FhirReleaseId).WillCascadeOnDelete(false);
      HasMany(c => c.SupplyRequestList).WithRequired(c => c.FhirRelease).HasForeignKey(m => m.FhirReleaseId).WillCascadeOnDelete(false);
      HasMany(c => c.TaskList).WithRequired(c => c.FhirRelease).HasForeignKey(m => m.FhirReleaseId).WillCascadeOnDelete(false);
      HasMany(c => c.TestReportList).WithRequired(c => c.FhirRelease).HasForeignKey(m => m.FhirReleaseId).WillCascadeOnDelete(false);
      HasMany(c => c.TestScriptList).WithRequired(c => c.FhirRelease).HasForeignKey(m => m.FhirReleaseId).WillCascadeOnDelete(false);
      HasMany(c => c.ValueSetList).WithRequired(c => c.FhirRelease).HasForeignKey(m => m.FhirReleaseId).WillCascadeOnDelete(false);
      HasMany(c => c.VisionPrescriptionList).WithRequired(c => c.FhirRelease).HasForeignKey(m => m.FhirReleaseId).WillCascadeOnDelete(false);

    }
  }
}
