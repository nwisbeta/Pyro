﻿using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

//This source file has been auto generated.

namespace Blaze.DataModel.DatabaseModel
{

  public class Res_Conformance_Index_profile
  {
    public int Res_Conformance_Index_profileID {get; set;}
    public string FhirId {get; set;}
    public string Type {get; set;}
    public virtual Aux_RootUrlStore Aux_RootUrlStoreID { get; set; }
    public virtual Res_Conformance Res_Conformance { get; set; }
   
    public Res_Conformance_Index_profile()
    {
    }
  }
}

