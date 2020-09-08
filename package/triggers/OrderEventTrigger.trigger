trigger OrderEventTrigger on Order_Event__e (after insert) {
// List to hold all cases to be created.
    List<Task> Taskss = new List<Task>();
    
    // Get user Id for Tasks owner
    user users = [SELECT Id FROM User WHERE Name='Mohammad Ghouse' LIMIT 1];
       
    // Iterate through each notification.
    for (Order_Event__e event : Trigger.New) {
        if (event.Has_Shipped__c == true) {
            // Create Task to dispatch new team.
            Task cs = new Task();
            cs.Priority = 'Medium';
            cs.Subject = 'Follow up on shipped order ' + event.Order_Number__c;
            cs.OwnerId = users.Id;
            Taskss.add(cs);
        }
   }
    
    // Insert all Taskss corresponding to events received.
    insert Taskss;
}