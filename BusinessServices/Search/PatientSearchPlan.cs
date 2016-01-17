﻿using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;
using Hl7.Fhir.Model;
using Blaze.Engine.Search.SearchTermTypes;
using Blaze.Engine.Support;

namespace Blaze.Engine.Search
{
  public class PatientSearchPlan : SearchPlanBase, Interfaces.ISearchPlan
  {
    public SearchResult Search(SearchTerms oSearchTerms)
    {

      //Check that the SearchTerms have not already thrown an error 
      var oSearchResult = new SearchResult();
      if (oSearchTerms.HasError)
      {
        oSearchResult.OperationOutcome = oSearchTerms.OperationOutcome;
        return oSearchResult;
      }

      //The search plan;
      if (oSearchTerms.SearchTermList.Count == 1)
      {
        if (oSearchTerms.SearchTermList.TrueForAll(x => x.Modifier == SearchModifierType.None && x.Prefix == SearchPrefixType.None))
        {
          if (!oSearchTerms.SearchTermList.Any(x => x.HasLogicalOrProperties == true))
          {
            //_Id
            if (oSearchTerms.SearchTermList[0].Name == Support.EnumSupport.SearchTermName._Id)
            {
              Search.SearchTermTypes.SearchTermString _Id = oSearchTerms.SearchTermList[0] as Search.SearchTermTypes.SearchTermString;
              oSearchResult.FhirBundle = _UnitOfWork.PatientRepository.SearchByFhirId(_Id.Values[0], null);
              return oSearchResult;
            }
            //Family
            if (oSearchTerms.SearchTermList[0].Name == Support.EnumSupport.SearchTermName.Family)
            {
              Search.SearchTermTypes.SearchTermString Family = oSearchTerms.SearchTermList[0] as Search.SearchTermTypes.SearchTermString;
              oSearchResult.FhirBundle = _UnitOfWork.PatientRepository.SearchByFamilyAndGiven(Family.Values[0], string.Empty, string.Empty, string.Empty, null, 1, RequestUri);
              return oSearchResult;
            }
            //Given
            if (oSearchTerms.SearchTermList[0].Name == Support.EnumSupport.SearchTermName.Given)
            {
              Search.SearchTermTypes.SearchTermString Given = oSearchTerms.SearchTermList[0] as Search.SearchTermTypes.SearchTermString;
              oSearchResult.FhirBundle = _UnitOfWork.PatientRepository.SearchByFamilyAndGiven(string.Empty, Given.Values[0], string.Empty, string.Empty, null, 1, RequestUri);
              return oSearchResult;
            }
            //Name
            if (oSearchTerms.SearchTermList[0].Name == Support.EnumSupport.SearchTermName.Name)
            {
              DataModel.Repository.DatabaseSearchResult oResult;
              Search.SearchTermTypes.SearchTermString Name = oSearchTerms.SearchTermList[0] as Search.SearchTermTypes.SearchTermString;
              oSearchResult.FhirBundle = _UnitOfWork.PatientRepository.SearchByFamilyAndGiven(string.Empty, string.Empty, Name.Values[0], string.Empty, null, 1, RequestUri);
              return oSearchResult;
            }
            //Phonetic
            if (oSearchTerms.SearchTermList[0].Name == Support.EnumSupport.SearchTermName.Phonetic)
            {
              Search.SearchTermTypes.SearchTermString Phonetic = oSearchTerms.SearchTermList[0] as Search.SearchTermTypes.SearchTermString;
              oSearchResult.FhirBundle = _UnitOfWork.PatientRepository.SearchByFamilyAndGiven(string.Empty, string.Empty, string.Empty, Phonetic.Values[0], null, 1, RequestUri);
              return oSearchResult;
            }
            //Identifier 
            if (oSearchTerms.SearchTermList[0].Name == Support.EnumSupport.SearchTermName.Identifier)
            {
              Search.SearchTermTypes.SearchTermToken Identifier = oSearchTerms.SearchTermList[0] as Search.SearchTermTypes.SearchTermToken;
              var IdentiferSystemAndCode = new Tuple<string, string>(Identifier.Values[0].System, Identifier.Values[0].Code);
              oSearchResult.FhirBundle = _UnitOfWork.PatientRepository.SearchByIdentifier(IdentiferSystemAndCode, null, 1, RequestUri);
              return oSearchResult;
            }
          }
        }
      }
      else if (oSearchTerms.SearchTermList.Count == 2)
      {
        if (oSearchTerms.SearchTermList.TrueForAll(x => x.Modifier == SearchModifierType.None && x.Prefix == SearchPrefixType.None))
        {
          if (!oSearchTerms.SearchTermList.Any(x => x.HasLogicalOrProperties == true))
          {

            //Family, Given
            if (oSearchTerms.SearchTermList.Exists(x => x.Name == Support.EnumSupport.SearchTermName.Family)
              && oSearchTerms.SearchTermList.Exists(x => x.Name == Support.EnumSupport.SearchTermName.Given))
            {              
              Search.SearchTermTypes.SearchTermString Family = oSearchTerms.SearchTermList.FirstOrDefault(x => x.Name == Support.EnumSupport.SearchTermName.Family) as Search.SearchTermTypes.SearchTermString;
              Search.SearchTermTypes.SearchTermString Given = oSearchTerms.SearchTermList.FirstOrDefault(x => x.Name == Support.EnumSupport.SearchTermName.Given) as Search.SearchTermTypes.SearchTermString;
              oSearchResult.FhirBundle = _UnitOfWork.PatientRepository.SearchByFamilyAndGiven(Family.Values[0], Given.Values[0], string.Empty, string.Empty, null, 1, RequestUri);
              return oSearchResult;
            }

            //------ Active ---------
            if (oSearchTerms.SearchTermList.Exists(x => x.Name == Support.EnumSupport.SearchTermName.Active))
            {
              Search.SearchTermTypes.SearchTermToken Active = oSearchTerms.SearchTermList.FirstOrDefault(x => x.Name == Support.EnumSupport.SearchTermName.Active) as Search.SearchTermTypes.SearchTermToken;
              var ActiverSystemAndCode = new Tuple<string, string>(Active.Values[0].System, Active.Values[0].Code);

              //Active, _Id
              if (oSearchTerms.SearchTermList[0].Name == Support.EnumSupport.SearchTermName._Id)
              {
                Search.SearchTermTypes.SearchTermString _Id = oSearchTerms.SearchTermList.FirstOrDefault(x => x.Name == Support.EnumSupport.SearchTermName._Id) as Search.SearchTermTypes.SearchTermString;                
                oSearchResult.FhirBundle = _UnitOfWork.PatientRepository.SearchByFhirId(_Id.Values[0], ActiverSystemAndCode);
                return oSearchResult;
              }

              //Active, Identifier 
              if (oSearchTerms.SearchTermList.Exists(x => x.Name == Support.EnumSupport.SearchTermName.Identifier))
              {
                Search.SearchTermTypes.SearchTermToken Identifier = oSearchTerms.SearchTermList.FirstOrDefault(x => x.Name == Support.EnumSupport.SearchTermName.Identifier) as Search.SearchTermTypes.SearchTermToken;                                
                var IdentiferSystemAndCode = new Tuple<string, string>(Identifier.Values[0].System, Identifier.Values[0].Code);
                oSearchResult.FhirBundle = _UnitOfWork.PatientRepository.SearchByIdentifier(IdentiferSystemAndCode, ActiverSystemAndCode, 1, RequestUri);
                return oSearchResult;
              }

              //Active, _Id
              if (oSearchTerms.SearchTermList[0].Name == Support.EnumSupport.SearchTermName._Id)
              {
                //                Search.SearchTermTypes.SearchTermString _Id = oSearchTerms.SearchTermList[0] as Search.SearchTermTypes.SearchTermString;
                //                oSearchResult.FhirBundle = _UnitOfWork.PatientRepository.SearchByFhirId(_Id.Values[0]);
                //                return oSearchResult;
              }
              //Active, Family
              if (oSearchTerms.SearchTermList[0].Name == Support.EnumSupport.SearchTermName.Family)
              {
                Search.SearchTermTypes.SearchTermString Family = oSearchTerms.SearchTermList.FirstOrDefault(x => x.Name == Support.EnumSupport.SearchTermName.Family) as Search.SearchTermTypes.SearchTermString;                                
                oSearchResult.FhirBundle = _UnitOfWork.PatientRepository.SearchByFamilyAndGiven(Family.Values[0], string.Empty, string.Empty, string.Empty, ActiverSystemAndCode, 1, RequestUri);
                return oSearchResult;
              }
              //Active, Given
              if (oSearchTerms.SearchTermList[0].Name == Support.EnumSupport.SearchTermName.Given)
              {
                Search.SearchTermTypes.SearchTermString Given = oSearchTerms.SearchTermList.FirstOrDefault(x => x.Name == Support.EnumSupport.SearchTermName.Given) as Search.SearchTermTypes.SearchTermString;                                
                oSearchResult.FhirBundle = _UnitOfWork.PatientRepository.SearchByFamilyAndGiven(string.Empty, Given.Values[0], string.Empty, string.Empty, ActiverSystemAndCode, 1, RequestUri);
                return oSearchResult;
              }
              //Active, Name
              if (oSearchTerms.SearchTermList[0].Name == Support.EnumSupport.SearchTermName.Name)
              {                
                Search.SearchTermTypes.SearchTermString Name = oSearchTerms.SearchTermList.FirstOrDefault(x => x.Name == Support.EnumSupport.SearchTermName.Name) as Search.SearchTermTypes.SearchTermString;                                
                oSearchResult.FhirBundle = _UnitOfWork.PatientRepository.SearchByFamilyAndGiven(string.Empty, string.Empty, Name.Values[0], string.Empty, ActiverSystemAndCode, 1, RequestUri);
                return oSearchResult;
              }
              //Active, Phonetic
              if (oSearchTerms.SearchTermList[0].Name == Support.EnumSupport.SearchTermName.Phonetic)
              {
                Search.SearchTermTypes.SearchTermString Phonetic = oSearchTerms.SearchTermList.FirstOrDefault(x => x.Name == Support.EnumSupport.SearchTermName.Phonetic) as Search.SearchTermTypes.SearchTermString;                                                
                oSearchResult.FhirBundle = _UnitOfWork.PatientRepository.SearchByFamilyAndGiven(string.Empty, string.Empty, string.Empty, Phonetic.Values[0], ActiverSystemAndCode, 1, RequestUri);
                return oSearchResult;
              }
            }
            //------ Page ----------
            if (oSearchTerms.SearchTermList.Exists(x => x.Name == Support.EnumSupport.SearchTermName.Page))
            {
              Search.SearchTermTypes.SearchTermNumber Page = oSearchTerms.SearchTermList.FirstOrDefault(x => x.Name == Support.EnumSupport.SearchTermName.Page) as Search.SearchTermTypes.SearchTermNumber;
              int Pagenumber = Convert.ToInt32(Page.Values[0]);
              //Page, Identifier
              if (oSearchTerms.SearchTermList.Exists(x => x.Name == Support.EnumSupport.SearchTermName.Identifier))
              {
                Search.SearchTermTypes.SearchTermToken Identifier = oSearchTerms.SearchTermList.FirstOrDefault(x => x.Name == Support.EnumSupport.SearchTermName.Identifier) as Search.SearchTermTypes.SearchTermToken;
                var IdentiferSystemAndCode = new Tuple<string, string>(Identifier.Values[0].System, Identifier.Values[0].Code);
                oSearchResult.FhirBundle = _UnitOfWork.PatientRepository.SearchByIdentifier(IdentiferSystemAndCode, null, Pagenumber, RequestUri);
                return oSearchResult;
              }
              //Page, Given
              if (oSearchTerms.SearchTermList.Exists(x => x.Name == Support.EnumSupport.SearchTermName.Given))
              {
                Search.SearchTermTypes.SearchTermString Given = oSearchTerms.SearchTermList.FirstOrDefault(x => x.Name == Support.EnumSupport.SearchTermName.Given) as Search.SearchTermTypes.SearchTermString;
                oSearchResult.FhirBundle = _UnitOfWork.PatientRepository.SearchByFamilyAndGiven(string.Empty, Given.Values[0], string.Empty, string.Empty, null, Pagenumber, RequestUri);
                return oSearchResult;
              }
              //Page, Family
              if (oSearchTerms.SearchTermList.Exists(x => x.Name == Support.EnumSupport.SearchTermName.Family))
              {
                Search.SearchTermTypes.SearchTermString Family = oSearchTerms.SearchTermList.FirstOrDefault(x => x.Name == Support.EnumSupport.SearchTermName.Family) as Search.SearchTermTypes.SearchTermString;
                oSearchResult.FhirBundle = _UnitOfWork.PatientRepository.SearchByFamilyAndGiven(Family.Values[0], string.Empty, string.Empty, string.Empty, null, Pagenumber, RequestUri);
                return oSearchResult;
              }
              //Page, Name
              if (oSearchTerms.SearchTermList.Exists(x => x.Name == Support.EnumSupport.SearchTermName.Name))
              {
                Search.SearchTermTypes.SearchTermString Name = oSearchTerms.SearchTermList.FirstOrDefault(x => x.Name == Support.EnumSupport.SearchTermName.Name) as Search.SearchTermTypes.SearchTermString;
                oSearchResult.FhirBundle = _UnitOfWork.PatientRepository.SearchByFamilyAndGiven(string.Empty, string.Empty, Name.Values[0], string.Empty, null, Pagenumber, RequestUri);
                return oSearchResult;
              }
              //Page, Phonetic
              if (oSearchTerms.SearchTermList.Exists(x => x.Name == Support.EnumSupport.SearchTermName.Phonetic))
              {
                Search.SearchTermTypes.SearchTermString Phonetic = oSearchTerms.SearchTermList.FirstOrDefault(x => x.Name == Support.EnumSupport.SearchTermName.Phonetic) as Search.SearchTermTypes.SearchTermString;                
                oSearchResult.FhirBundle = _UnitOfWork.PatientRepository.SearchByFamilyAndGiven(string.Empty, string.Empty, string.Empty, Phonetic.Values[0], null, Pagenumber, RequestUri);
                return oSearchResult;
              }

            }
          }
        }
      }
      else if (oSearchTerms.SearchTermList.Count == 3)
      {
        if (oSearchTerms.SearchTermList.TrueForAll(x => x.Modifier == SearchModifierType.None && x.Prefix == SearchPrefixType.None))
        {
          if (!oSearchTerms.SearchTermList.Any(x => x.HasLogicalOrProperties == true))
          {
            //------ Active ------
            if (oSearchTerms.SearchTermList.Exists(x => x.Name == Support.EnumSupport.SearchTermName.Active))
            {
              Search.SearchTermTypes.SearchTermToken Active = oSearchTerms.SearchTermList.FirstOrDefault(x => x.Name == Support.EnumSupport.SearchTermName.Active) as Search.SearchTermTypes.SearchTermToken;
              var ActiverSystemAndCode = new Tuple<string, string>(Active.Values[0].System, Active.Values[0].Code);

              //Active, Family, Given
              if (oSearchTerms.SearchTermList.Exists(x => x.Name == Support.EnumSupport.SearchTermName.Family) &&
                oSearchTerms.SearchTermList.Exists(x => x.Name == Support.EnumSupport.SearchTermName.Given))
              {
                Search.SearchTermTypes.SearchTermString Family = oSearchTerms.SearchTermList.FirstOrDefault(x => x.Name == Support.EnumSupport.SearchTermName.Family) as Search.SearchTermTypes.SearchTermString;
                Search.SearchTermTypes.SearchTermString Given = oSearchTerms.SearchTermList.FirstOrDefault(x => x.Name == Support.EnumSupport.SearchTermName.Given) as Search.SearchTermTypes.SearchTermString;
                oSearchResult.FhirBundle = _UnitOfWork.PatientRepository.SearchByFamilyAndGiven(Family.Values[0], Given.Values[0], string.Empty, string.Empty, ActiverSystemAndCode, 1, RequestUri);
                return oSearchResult;
              }


              //------ Page ---------
              if (oSearchTerms.SearchTermList.Exists(x => x.Name == Support.EnumSupport.SearchTermName.Page))
              {
                Search.SearchTermTypes.SearchTermNumber Page = oSearchTerms.SearchTermList.FirstOrDefault(x => x.Name == Support.EnumSupport.SearchTermName.Page) as Search.SearchTermTypes.SearchTermNumber;
                int Pagenumber = Convert.ToInt32(Page.Values[0]);

                //Active, Page, Family
                if (oSearchTerms.SearchTermList.Exists(x => x.Name == Support.EnumSupport.SearchTermName.Family))
                {
                  Search.SearchTermTypes.SearchTermString Family = oSearchTerms.SearchTermList.FirstOrDefault(x => x.Name == Support.EnumSupport.SearchTermName.Family) as Search.SearchTermTypes.SearchTermString;
                  oSearchResult.FhirBundle = _UnitOfWork.PatientRepository.SearchByFamilyAndGiven(Family.Values[0], null, string.Empty, string.Empty, ActiverSystemAndCode, Pagenumber, RequestUri);
                  return oSearchResult;
                }
                //Active, Page, Given
                if (oSearchTerms.SearchTermList[0].Name == Support.EnumSupport.SearchTermName.Given)
                {
                  Search.SearchTermTypes.SearchTermString Given = oSearchTerms.SearchTermList.FirstOrDefault(x => x.Name == Support.EnumSupport.SearchTermName.Given) as Search.SearchTermTypes.SearchTermString;
                  oSearchResult.FhirBundle = _UnitOfWork.PatientRepository.SearchByFamilyAndGiven(string.Empty, Given.Values[0], string.Empty, string.Empty, ActiverSystemAndCode, Pagenumber, RequestUri);
                  return oSearchResult;
                }
                //Active, Page, Name
                if (oSearchTerms.SearchTermList[0].Name == Support.EnumSupport.SearchTermName.Name)
                {
                  Search.SearchTermTypes.SearchTermString Name = oSearchTerms.SearchTermList.FirstOrDefault(x => x.Name == Support.EnumSupport.SearchTermName.Name) as Search.SearchTermTypes.SearchTermString;                                  
                  oSearchResult.FhirBundle = _UnitOfWork.PatientRepository.SearchByFamilyAndGiven(string.Empty, string.Empty, Name.Values[0], string.Empty, ActiverSystemAndCode, Pagenumber, RequestUri);
                  return oSearchResult;
                }
                //Active, Page, Phonetic
                if (oSearchTerms.SearchTermList[0].Name == Support.EnumSupport.SearchTermName.Phonetic)
                {
                  Search.SearchTermTypes.SearchTermString Phonetic = oSearchTerms.SearchTermList.FirstOrDefault(x => x.Name == Support.EnumSupport.SearchTermName.Phonetic) as Search.SearchTermTypes.SearchTermString;                  
                  oSearchResult.FhirBundle = _UnitOfWork.PatientRepository.SearchByFamilyAndGiven(string.Empty, string.Empty, string.Empty, Phonetic.Values[0], ActiverSystemAndCode, Pagenumber, RequestUri);
                  return oSearchResult;
                }
                //Active, Page, Identifier
                if (oSearchTerms.SearchTermList[0].Name == Support.EnumSupport.SearchTermName.Identifier)
                {
                  Search.SearchTermTypes.SearchTermToken Identifier = oSearchTerms.SearchTermList.FirstOrDefault(x => x.Name == Support.EnumSupport.SearchTermName.Phonetic) as Search.SearchTermTypes.SearchTermToken;                                    
                  var IdentiferSystemAndCode = new Tuple<string, string>(Identifier.Values[0].System, Identifier.Values[0].Code);
                  oSearchResult.FhirBundle = _UnitOfWork.PatientRepository.SearchByIdentifier(IdentiferSystemAndCode, ActiverSystemAndCode, Pagenumber, RequestUri);
                  return oSearchResult;
                }
              }
            }
          }
        }
      }
      else if (oSearchTerms.SearchTermList.Count == 4)
      {
        if (oSearchTerms.SearchTermList.TrueForAll(x => x.Modifier == SearchModifierType.None && x.Prefix == SearchPrefixType.None))
        {
          if (!oSearchTerms.SearchTermList.Any(x => x.HasLogicalOrProperties == true))
          {
            //------ Active ------
            if (oSearchTerms.SearchTermList.Exists(x => x.Name == Support.EnumSupport.SearchTermName.Active))
            {
              Search.SearchTermTypes.SearchTermToken Active = oSearchTerms.SearchTermList.FirstOrDefault(x => x.Name == Support.EnumSupport.SearchTermName.Active) as Search.SearchTermTypes.SearchTermToken;
              var ActiverSystemAndCode = new Tuple<string, string>(Active.Values[0].System, Active.Values[0].Code);
            
              //------ Page ---------
              if (oSearchTerms.SearchTermList.Exists(x => x.Name == Support.EnumSupport.SearchTermName.Page))
              {
                Search.SearchTermTypes.SearchTermNumber Page = oSearchTerms.SearchTermList.FirstOrDefault(x => x.Name == Support.EnumSupport.SearchTermName.Page) as Search.SearchTermTypes.SearchTermNumber;
                int Pagenumber = Convert.ToInt32(Page.Values[0]);

                //Active, Page, Family, Given
                if (oSearchTerms.SearchTermList.Exists(x => x.Name == Support.EnumSupport.SearchTermName.Family) &&
                  oSearchTerms.SearchTermList.Exists(x => x.Name == Support.EnumSupport.SearchTermName.Given))
                {
                  Search.SearchTermTypes.SearchTermString Family = oSearchTerms.SearchTermList.FirstOrDefault(x => x.Name == Support.EnumSupport.SearchTermName.Family) as Search.SearchTermTypes.SearchTermString;
                  Search.SearchTermTypes.SearchTermString Given = oSearchTerms.SearchTermList.FirstOrDefault(x => x.Name == Support.EnumSupport.SearchTermName.Given) as Search.SearchTermTypes.SearchTermString;
                  oSearchResult.FhirBundle = _UnitOfWork.PatientRepository.SearchByFamilyAndGiven(Family.Values[0], Given.Values[0], string.Empty, string.Empty, ActiverSystemAndCode, Pagenumber, RequestUri);
                  return oSearchResult;
                }
                            
              }            
            }
          }
        }
      }
      //No Search Plan match was found so create OperationOutcome to inform sender
      var OpOutComeIssueComp = new OperationOutcome.IssueComponent();
      OpOutComeIssueComp.Severity = OperationOutcome.IssueSeverity.Error;
      OpOutComeIssueComp.Code = OperationOutcome.IssueType.Invalid;
      string ParameterListForErrorMessage = string.Empty;
      foreach (var item in oSearchTerms.SearchTermList)
      {
        ParameterListForErrorMessage += item.RawValue + " & ";
      }
      ParameterListForErrorMessage = ParameterListForErrorMessage.Substring(0, ParameterListForErrorMessage.Length - 3);
      OpOutComeIssueComp.Details = new CodeableConcept("http://hl7.org/fhir/operation-outcome", "MSG_PARAM_UNKNOWN", String.Format("Parameter '{0}' not understood", ParameterListForErrorMessage));
      OpOutComeIssueComp.Details.Text = String.Format("This search parameter combination provided is not supported by the server. Parameters were: {0}", ParameterListForErrorMessage);
      oSearchResult.AddOperationOutcomeIssue(OpOutComeIssueComp, System.Net.HttpStatusCode.BadRequest);
      return oSearchResult;
    }
  }
}