﻿using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

//This source file has been auto generated.

namespace Blaze.DataModel.DatabaseModel
{

  public class Res_Patient_Index_name
  {
    public int Res_Patient_Index_nameID {get; set;}
    public string String {get; set;}
    public virtual Res_Patient Res_Patient { get; set; }
   
    public Res_Patient_Index_name()
    {
    }
  }
}

