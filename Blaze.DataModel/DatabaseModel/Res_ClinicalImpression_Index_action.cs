﻿using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

//This source file has been auto generated.

namespace Blaze.DataModel.DatabaseModel
{

  public class Res_ClinicalImpression_Index_action
  {
    public int Res_ClinicalImpression_Index_actionID {get; set;}
    public string FhirId {get; set;}
    public string Type {get; set;}
    public virtual Aux_RootUrlStore Aux_RootUrlStoreID { get; set; }
    public virtual Res_ClinicalImpression Res_ClinicalImpression { get; set; }
   
    public Res_ClinicalImpression_Index_action()
    {
    }
  }
}

