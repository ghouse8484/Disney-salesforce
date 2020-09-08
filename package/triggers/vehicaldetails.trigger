trigger vehicaldetails on Vehicle__c (before insert) {

if(trigger.isinsert){
 Vehicle__c[] veh = Trigger.new;
 Vehicalclass.applyDiscount(veh);

}
}