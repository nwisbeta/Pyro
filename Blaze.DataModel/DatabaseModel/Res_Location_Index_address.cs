﻿using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

//This source file has been auto generated.

namespace Blaze.DataModel.DatabaseModel
{

  public class Res_Location_Index_address
  {
    public int Res_Location_Index_addressID {get; set;}
    public string String {get; set;}
    public virtual Res_Location Res_Location { get; set; }
   
    public Res_Location_Index_address()
    {
    }
  }
}

