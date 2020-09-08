public class CommonUtility1 
{
    Public static void Getoriflame(string RecordName)
    {
        If(RecordName != null && RecordName != '')
        {
            List<Oriflame_Stock__c> lstori = [Select id, name,
                                             /*   (Select id, firstname, lastname, email, title, phone from Contacts),
                                                (Select id, name, amount, stagename, closedate from opportunities), */
                                                (Select id from Customers__r)
                                            from Oriflame_Stock__c
                                                Where name =: RecordName];  
            
            system.debug('Collection Size is...: '+ lstori.size());
            
            if(! lstori.isEmpty())
            {
                for(Oriflame_Stock__c acc : lstori)
                {
                    system.debug('Ori Record is...: '+ acc);
                    
                    // Get the Related Contacts..
                    system.debug('----------------------------------------------');
                    system.debug('Number of Related Contacts..: '+ acc.Customers__r.Size());
                    for(Customer__c con : acc.Customers__r)
                    {
                        system.debug('Contact Record...: '+ con);
                    }
                    
                    
                }
            }
        }
    }
}