﻿using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;
using Blaze.DataModel.DatabaseModel.Base;

//This source file has been auto generated.

namespace Blaze.DataModel.DatabaseModel
{

  public class Res_HealthcareService_Index_servicecategory : TokenIndex
  {
    public int Res_HealthcareService_Index_servicecategoryID {get; set;}
    public virtual Res_HealthcareService Res_HealthcareService { get; set; }
   
    public Res_HealthcareService_Index_servicecategory()
    {
    }
  }
}
