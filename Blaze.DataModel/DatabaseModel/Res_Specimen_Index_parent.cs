﻿using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

//This source file has been auto generated.

namespace Blaze.DataModel.DatabaseModel
{

  public class Res_Specimen_Index_parent
  {
    public int Res_Specimen_Index_parentID {get; set;}
    public string FhirId {get; set;}
    public string Type {get; set;}
    public virtual Aux_RootUrlStore Aux_RootUrlStoreID { get; set; }
    public virtual Res_Specimen Res_Specimen { get; set; }
   
    public Res_Specimen_Index_parent()
    {
    }
  }
}

