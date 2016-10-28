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
  public class Res_Provenance_Index_sig_Configuration : EntityTypeConfiguration<Res_Provenance_Index_sig>
  {

    public Res_Provenance_Index_sig_Configuration()
    {
      HasKey(x => x.Res_Provenance_Index_sigID).Property(x => x.Res_Provenance_Index_sigID).IsRequired();
      Property(x => x.Code).IsRequired();
      Property(x => x.System).IsOptional();
      HasRequired(x => x.Res_Provenance).WithMany(x => x.sig_List).WillCascadeOnDelete(true);
    }
  }
}