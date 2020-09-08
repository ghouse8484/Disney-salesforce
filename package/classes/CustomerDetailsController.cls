public class CustomerDetailsController 
    {
        Public integer customerCode{get;set;}
        Public string customerName{get;set;}
        Public string customerAddress{get;set;}
        Public Decimal balanceAmount {get;set;}
        Public Boolean isActive{get;set;}
        Public Date birthDate {get;set;}    

         // Default Constructor..
        Public CustomerDetailsController()
        {
           customerCode = 120048;
           customerName = 'Ram Kumar'; 
           customerAddress = 'BTM Layout, Bangalore';
           balanceAmount = 3500000;
           isActive = true;
           birthDate = Date.NewInstance(1990, 02, 21);
        }      
    }