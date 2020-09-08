global class batchExample implements Database.Batchable<sObject> {
    
    global Database.QueryLocator start(Database.BatchableContext BC) {
        // collect the batches of records or objects to be passed to execute
        
        String query = 'SELECT Id,Name FROM Account';
        return Database.getQueryLocator(query);
        
      
    }
    
    global void execute(Database.BatchableContext BC, List<Account> accList) {
       
        // process each batch of records

System.debug('Size---'+acclist.size());
        
        for(Account acc : accList)
        {        
            // Update the Account Name 
            acc.description = acc.Name + 'bacth Process';
        }
        try {
            // Update the Account Record
            update accList;
        
        } catch(Exception e) {
            System.debug(e);
        }
        
    }   
    
    global void finish(Database.BatchableContext BC) {
        // execute any post-processing operations
  }
}