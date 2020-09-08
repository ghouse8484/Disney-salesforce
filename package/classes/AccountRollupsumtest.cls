@istest
Public class AccountRollupsumtest{
static testmethod void AccountRollupsumtestmethod(){
 Account acc = new Account();
 
 acc.name = 'test account';
 acc.fax = '11111111';
 

 insert acc;

 
 Contact con = new contact();
 
 con.lastname = 'test contact';
 con.accountid = acc.id;
 con.amount__c = 1000.0;
 test.starttest();
 insert con;

 
 con.lastname='testcontact1';
 update con;
 test.stoptest();
 

}
}