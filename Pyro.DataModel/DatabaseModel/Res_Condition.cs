﻿using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;
using Blaze.DataModel.DatabaseModel.Base;

//This source file has been auto generated.

namespace Blaze.DataModel.DatabaseModel
{

  public class Res_Condition : ResourceIndexBase
  {
    public int Res_ConditionID {get; set;}
    public string asserter_VersionId {get; set;}
    public string asserter_FhirId {get; set;}
    public string asserter_Type {get; set;}
    public virtual ServiceRootURL_Store asserter_Url { get; set; }
    public int? asserter_ServiceRootURL_StoreID { get; set; }
    public string clinicalstatus_Code {get; set;}
    public string clinicalstatus_System {get; set;}
    public string context_VersionId {get; set;}
    public string context_FhirId {get; set;}
    public string context_Type {get; set;}
    public virtual ServiceRootURL_Store context_Url { get; set; }
    public int? context_ServiceRootURL_StoreID { get; set; }
    public int? date_recorded_Date {get; set;}
    public string patient_VersionId {get; set;}
    public string patient_FhirId {get; set;}
    public string patient_Type {get; set;}
    public virtual ServiceRootURL_Store patient_Url { get; set; }
    public int? patient_ServiceRootURL_StoreID { get; set; }
    public string subject_VersionId {get; set;}
    public string subject_FhirId {get; set;}
    public string subject_Type {get; set;}
    public virtual ServiceRootURL_Store subject_Url { get; set; }
    public int? subject_ServiceRootURL_StoreID { get; set; }
    public ICollection<Res_Condition_History> Res_Condition_History_List { get; set; }
    public ICollection<Res_Condition_Index_body_site> body_site_List { get; set; }
    public ICollection<Res_Condition_Index_category> category_List { get; set; }
    public ICollection<Res_Condition_Index_code> code_List { get; set; }
    public ICollection<Res_Condition_Index_evidence> evidence_List { get; set; }
    public ICollection<Res_Condition_Index_identifier> identifier_List { get; set; }
    public ICollection<Res_Condition_Index_severity> severity_List { get; set; }
    public ICollection<Res_Condition_Index_stage> stage_List { get; set; }
    public ICollection<Res_Condition_Index__profile> _profile_List { get; set; }
    public ICollection<Res_Condition_Index__security> _security_List { get; set; }
    public ICollection<Res_Condition_Index__tag> _tag_List { get; set; }
   
    public Res_Condition()
    {
      this.body_site_List = new HashSet<Res_Condition_Index_body_site>();
      this.category_List = new HashSet<Res_Condition_Index_category>();
      this.code_List = new HashSet<Res_Condition_Index_code>();
      this.evidence_List = new HashSet<Res_Condition_Index_evidence>();
      this.identifier_List = new HashSet<Res_Condition_Index_identifier>();
      this.severity_List = new HashSet<Res_Condition_Index_severity>();
      this.stage_List = new HashSet<Res_Condition_Index_stage>();
      this._profile_List = new HashSet<Res_Condition_Index__profile>();
      this._security_List = new HashSet<Res_Condition_Index__security>();
      this._tag_List = new HashSet<Res_Condition_Index__tag>();
      this.Res_Condition_History_List = new HashSet<Res_Condition_History>();
    }
  }
}
