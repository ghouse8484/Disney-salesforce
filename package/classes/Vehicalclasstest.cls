@isTest
private class Vehicalclasstest {
 static testMethod void validateHelloWorld() {
 Vehicle__c b = new Vehicle__c(Name='maruthi', Price__c=100);
 System.debug('Price before inserting vehical: ' + b.Price__c);
 
 Test.startTest();
 // Insert Vehicle__c
 insert b;
 
 Test.stopTest();
 
 // Retrieve the new Vehicle__c
 b = [SELECT Price__c FROM Vehicle__c WHERE Id =:b.Id];
 System.debug('Price after trigger fired: ' + b.Price__c);
 
 // Test that the trigger correctly updated the price
 System.assertEquals(90, b.Price__c);
 }
}