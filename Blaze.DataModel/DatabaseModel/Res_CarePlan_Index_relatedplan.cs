﻿using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;
using Blaze.DataModel.DatabaseModel.Base;

//This source file has been auto generated.

namespace Blaze.DataModel.DatabaseModel
{

  public class Res_CarePlan_Index_relatedplan : ReferenceIndex
  {
    public int Res_CarePlan_Index_relatedplanID {get; set;}
    public virtual Res_CarePlan Res_CarePlan { get; set; }
   
    public Res_CarePlan_Index_relatedplan()
    {
    }
  }
}
