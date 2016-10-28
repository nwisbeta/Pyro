﻿using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;
using System.Data.Entity;
using System.ComponentModel.DataAnnotations.Schema;
using System.Data.Entity.ModelConfiguration;
using System.Data.Entity.ModelConfiguration.Conventions;
using System.Data.Entity.Infrastructure.Annotations;

//This is an Auto generated file do not change it's contents!!.

namespace Blaze.DataModel.DatabaseModel
{
  public class Res_DocumentReference_Index_securitylabel_Configuration : EntityTypeConfiguration<Res_DocumentReference_Index_securitylabel>
  {

    public Res_DocumentReference_Index_securitylabel_Configuration()
    {
      HasKey(x => x.Res_DocumentReference_Index_securitylabelID).Property(x => x.Res_DocumentReference_Index_securitylabelID).IsRequired();
      Property(x => x.Code).IsRequired();
      Property(x => x.System).IsOptional();
      HasRequired(x => x.Res_DocumentReference).WithMany(x => x.securitylabel_List).WillCascadeOnDelete(true);
    }
  }
}