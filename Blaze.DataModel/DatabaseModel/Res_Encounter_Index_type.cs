﻿using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

//This source file has been auto generated.

namespace Blaze.DataModel.DatabaseModel
{

  public class Res_Encounter_Index_type
  {
    public int Res_Encounter_Index_typeID {get; set;}
    public string Code {get; set;}
    public string System {get; set;}
    public virtual Res_Encounter Res_Encounter { get; set; }
   
    public Res_Encounter_Index_type()
    {
    }
  }
}

