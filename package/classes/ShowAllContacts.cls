public class ShowAllContacts 
{
    Public List<Contact> lstContacts{get;set;}    
    
    Public ShowAllContacts()
    {
        lstContacts = new List<Contact>();
        
        lstContacts = [Select id, firstname, lastname, email, title, phone, fax, 
                                        mailingcity, mailingstate, mailingcountry
                                                from Contact];
    }    
}