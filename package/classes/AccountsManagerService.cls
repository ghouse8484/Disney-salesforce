@RestResource(URLMapping='/AccountsServiceHelper/*')
Global class AccountsManagerService 
{
    @HttpGet()
    Global Static List<Account> GetAllAccounts()
    {
        List<Account> lstAccounts = [Select id, name, rating, industry, annualrevenue,
                                            active__C, phone, fax, customerpriority__C
                                                from Account 
                                                    Order by name];
        
        return lstAccounts;
    }
}