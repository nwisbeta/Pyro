﻿using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

//This source file has been auto generated.

namespace Blaze.DataModel.DatabaseModel
{

  public class Res_Device_Index_identifier
  {
    public int Res_Device_Index_identifierID {get; set;}
    public string Code {get; set;}
    public string System {get; set;}
    public virtual Res_Device Res_Device { get; set; }
   
    public Res_Device_Index_identifier()
    {
    }
  }
}

