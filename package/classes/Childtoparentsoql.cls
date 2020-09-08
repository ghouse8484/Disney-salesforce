public class Childtoparentsoql 
{
    Public static void GetCaseAndRelatedParentDetails(string caseRecordNumber)
    {
        List<Case> lstCases= [ Select id, caseNumber, status, type, origin, reason, subject,
                                        Contact.FirstName, Contact.LastName, Contact.Title, Contact.Email,
                                        Contact.Account.Name, Contact.Account.Rating, Contact.Account.Industry,
                                        Contact.Account.Owner.LastName,Contact.Account.Owner.Email,
                                        Contact.Account.Owner.Profile.Name,
                                        Contact.Account.Owner.Profile.UserLicense.Name                              
                                from Case
                                    Where caseNumber =: caseRecordNumber            
                             ];
        
        system.debug('Collection Size is...: '+ lstCases.size());
        
        for(Case cs : lstCases)
        {
            system.debug('Case Record Details...: '+ cs);
            system.debug('Contact Person Name...: '+ cs.Contact.FirstName + ' '+ cs.Contact.LastName);
            system.debug('Contact Person Email ID....: '+ cs.Contact.Email);
            System.debug('Account Record Name is...: '+ cs.Contact.Account.Name);
            system.debug('Account Record Owner Email Id..: '+ cs.Contact.Account.Owner.Email);
            system.debug('Account Owner Profile Name..: '+ cs.Contact.Account.Owner.Profile.Name);
            system.debug('Owner License is...: '+ cs.Contact.Account.Owner.Profile.USerLicense.Name);
        }
    }
}