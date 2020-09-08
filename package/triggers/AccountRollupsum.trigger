trigger AccountRollupsum on contact (after insert, after update, after delete, after undelete) {
    Set<ID> setID = new Set<ID>();
    List<Account> lstAcc = new List<Account>();
    
    if(trigger.isinsert || trigger.isundelete){
        for(contact c : trigger.new){
            setID.add(c.Accountid);
        }
    }
    else if(trigger.isDelete){
        for(contact c : trigger.old){
            setID.add(c.Accountid);
        }
    }
    
    else if(trigger.isUpdate){
         for(contact c : trigger.new){
            if(c.Accountid != null){
                if(trigger.oldmap.get(c.id).Accountid != c.Accountid){
                    setID.add(c.Accountid);     
                }
            } 
            setID.add(trigger.oldmap.get(c.id).Accountid);
         }
    }
    if(setid.size() > 0){
        lstAcc = [Select id,AnnualRevenue,(Select id,amount__c from contacts) from Account where id IN : setID];
    }
    for(Account acc : lstAcc){
        decimal val = 0;
        for(contact con : acc.contacts){
            
            val += con.amount__c;
            
        }
        acc.AnnualRevenue = val;
    }
    update lstAcc;
}