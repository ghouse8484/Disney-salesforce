public class GlobalSearchUtility 
{
    // Static SOSL Query..
    Public static void SearchRecords()
    {
       List<List<SObject>> lstRecords = [FIND 'test*' IN ALL FIELDS RETURNING
                                            Account(ID, Name, Rating, Industry, Annualrevenue, Phone, Fax, Active__C),
                                            Contact(ID, FirstName, LastName, Title, Email, Phone, Fax),
                                            Opportunity(ID, Name, Amount, StageName, CloseDate),
                                            Lead(ID, FirstName, LastName, Title, Email, Company, Status, Phone, Fax)
                                           // Position__C(ID, Name, Location_Name__C, Position_status__c, Maximum_pay__C)
                                        ];
        
        List<Account> lstAccounts = (List<Account>) lstRecords.Get(0); 
        system.debug('Account Records...: '+ lstAccounts.size());
        for(Account acc : lstAccounts)
        {
            system.debug('Account Record...: '+ acc);
        }
        
        List<Contact> lstContacts = (List<Contact>) lstRecords.Get(1);
        
        system.debug('--------------------------------------------');
        system.debug('Contact Records...: '+ lstContacts.size());        
        for(Contact con : lstContacts)
        {
            system.debug('Contact Record...: ' + con);
        }
        
        List<Opportunity> lstOppty = (List<Opportunity>) lstRecords.Get(2);
        
        system.debug('--------------------------------------------');
        system.debug('Opportunity Records...: '+ lstOppty.size());        
        for(Opportunity oppty : lstOppty)
        {
            system.debug('Opportunity Record...: '+ oppty);
        }
        
        List<Lead> lstLeads = (List<Lead>) lstRecords.Get(3);
        
        system.debug('--------------------------------------------');
        system.debug('Lead Records...: '+ lstLeads.size());        
        for(Lead ld: lstLeads)
        {
            system.debug('Lead Record....: '+ ld);
        }
        
    /*    List<Position__C> lstPos = (List<Position__C>) lstRecords.Get(4);
        
        system.debug('--------------------------------------------');
        system.debug('Position Records...: '+ lstPos.size());   
        for(Position__c pos: lstPos)
        {
            system.debug('Position Record...: '+ pos);
        }   */           
    }
}