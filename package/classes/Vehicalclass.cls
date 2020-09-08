public class Vehicalclass {
 public static void applyDiscount(Vehicle__c[] veh) {
   for (Vehicle__c b :veh){
     b.Price__c *= 0.9;
   }
 }
}