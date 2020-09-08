public class CommonUtility 
{
    Public static void GetAccountAndRelatedChilds(string accountRecordName)
    {
        If(accountRecordName != null && accountRecordName != '')
        {
            List<Account> lstAccounts = [Select id, name, rating, industry, annualrevenue, phone, fax, active__C,
                                             /*   (Select id, firstname, lastname, email, title, phone from Contacts),
                                                (Select id, name, amount, stagename, closedate from opportunities), */
                                                (Select id, casenumber, status, type, priority, reason from Cases)
                                            from Account
                                                Where name =: accountRecordName];  
            
            system.debug('Collection Size is...: '+ lstAccounts.size());
            
            if(! lstaccounts.isEmpty())
            {
                for(Account acc : lstAccounts)
                {
                    system.debug('Account Record is...: '+ acc);
                    
                    // Get the Related Contacts..
                    system.debug('----------------------------------------------');
                    system.debug('Number of Related Contacts..: '+ acc.Contacts.Size());
                    for(Contact con : acc.Contacts)
                    {
                        system.debug('Contact Record...: '+ con);
                    }
                    
                    // Get the Related Opportunities..
                    system.debug('----------------------------------------------');
                    system.debug('Number of Related Opportunities...: '+ acc.Opportunities.size());
                    for(Opportunity oppty : acc.Opportunities)
                    {
                        system.debug('Opportunity Record is...: '+ oppty);
                    }
                    
                    // Get the Related Cases..
                    system.debug('----------------------------------------------');
                    system.debug('Number of Related Cases....: '+ acc.cases.size());
                    for(Case cs : acc.Cases)
                    {
                        system.debug('Case Record is...: '+ cs);
                    }
                }
            }
        }
    }
}