public class CreateContactRecordController 
    {
        Public string recordResult {get;set;}

        Public void CreateContactRecord()
        {
            // Write the Code to Create Contact Record..
            Contact con = new Contact();
            
                con.FirstName = 'Page1';
                con.LastName = 'Record1';
                con.Title = 'Sale1';
                con.Phone = '990091';
                con.fax = '9988776';
                con.email = 'stest1@gmail.com';
                con.MailingCity = 'Hyd';
                con.MailingState = 'Tn';
                con.MailingCountry = 'India';
                
             insert con;
             
             if(con.id != null)
             {
                 recordResult = 'Contact Record inserted Successfully with id..: '+con.id;
             }
        }
    }