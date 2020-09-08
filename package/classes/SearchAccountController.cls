public class SearchAccountController 
{
    Public string searchText{get;set;}
    Public List<Account> lstAccounts {get;set;}
    
    //system.debug('Searchtext outside method'+searchText);
    Public void SearchAccountRecords()
    {
        lstAccounts = new List<Account>();
        system.debug('Bfore IF Searchtext'+searchText);
        if(searchText != null && searchText != '')
        {
        
        system.debug('after IF Searchtext'+searchText);
 
         //   searchText += '%';
         
         searchText = '%' + searchText + '%';
         
         system.debug('after % Searchtext'+searchText);
 
            
          
            lstAccounts = [Select id, name, rating, industry, annualrevenue, type, 
                                ownership, fax, phone, active__C
                                    from Account
                                           Where name like : searchText];
        
    }
    }
}