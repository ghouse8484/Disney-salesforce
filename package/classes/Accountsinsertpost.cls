@RestResource(URLMapping='/Accountsinsert/*')
Global class Accountsinsertpost 
{
    @HttpPost()
    Global static Account CreateNewAccount(string accName, string accRating, string accIndustry,
                                            Decimal accRevenue, string accPhone, string accFax,
                                            string accStatus, string accWebSite)
    {
        Account acc = new Account();
        
            acc.Name = accName;
            acc.Rating = accRating;
            acc.AnnualRevenue = accRevenue;
            acc.Industry = accIndustry;
            acc.Phone = accPhone;
            acc.Fax = accFax;
            acc.Website = accWebSite;
            acc.Active__c = accStatus;
        
        insert acc;
        
        return acc;
    }
}