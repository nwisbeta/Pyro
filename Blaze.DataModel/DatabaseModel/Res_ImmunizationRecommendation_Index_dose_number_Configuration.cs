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
  public class Res_ImmunizationRecommendation_Index_dose_number_Configuration : EntityTypeConfiguration<Res_ImmunizationRecommendation_Index_dose_number>
  {

    public Res_ImmunizationRecommendation_Index_dose_number_Configuration()
    {
      HasKey(x => x.Res_ImmunizationRecommendation_Index_dose_numberID).Property(x => x.Res_ImmunizationRecommendation_Index_dose_numberID).IsRequired();
      Property(x => x.Comparator).IsOptional();
      Property(x => x.Quantity).IsRequired().HasPrecision(28,14);
      HasRequired(x => x.Res_ImmunizationRecommendation).WithMany(x => x.dose_number_List).WillCascadeOnDelete(true);
    }
  }
}
