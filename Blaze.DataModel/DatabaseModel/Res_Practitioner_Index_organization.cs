﻿using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

//This source file has been auto generated.

namespace Blaze.DataModel.DatabaseModel
{

  public class Res_Practitioner_Index_organization
  {
    public int Res_Practitioner_Index_organizationID {get; set;}
    public string FhirId {get; set;}
    public string Type {get; set;}
    public virtual Aux_RootUrlStore Aux_RootUrlStoreID { get; set; }
    public virtual Res_Practitioner Res_Practitioner { get; set; }
   
    public Res_Practitioner_Index_organization()
    {
    }
  }
}

