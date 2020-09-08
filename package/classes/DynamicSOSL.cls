Public class DynamicSOSL
{
// Dynamic SOQL Query

Public Static void dynamicsearch(string searchtext)
{
/*
string searchquery = 'FIND '+'\''+searchtext +'*'+'\''+' IN ALL FIELDS RETURNING'
                      'Account(id,rating),'+
                      'Contact(id,firstname),';
                      'Students__c(id,name),'+
                      'Books__c(id,name)'; */
                      
String searchQuery = 'FIND \'' + searchtext + '\' IN ALL FIELDS RETURNING Account(Name,rating), Contact(FirstName,LastName )';

list<list<Sobject>>  lstrecords = search.query(searchquery);

list<account> lstaccounts = (List<account>)lstrecords.get(0);
system.debug('Accounts'+lstaccounts.size());
For(Account acc:lstaccounts)
{

system.debug('Each Account...'+acc);
}
list<contact> lstcontacts = (List<contact>)lstrecords.get(1);
system.debug('Contacts'+lstcontacts.size());
For(Contact con: lstcontacts)
{

system.debug('Each Contact...'+con);

}

/*List<students__c> lststu= (List<students__c>)lstrecords.get(2);
system.debug('Student records...'+ lststu.size());
For(Students__c stu : lststu)
{
system.debug('each Student '+stu);
}

List<Books__c> lstb = (list<Books__c>)lstrecords.get(3);
system.debug('Books'+lstb.size());
For(Books__c b : lstb)
{
System.debug('each book'+b);
} */
}

}