trigger UpdateAddress on Account (after update) {
    Set<Id> accountIds = new Set<Id>();
    for (Account a : Trigger.new) {
        Account old = Trigger.oldMap.get(a.Id);
        if (a.BillingStreet != old.BillingStreet) {
            accountIds.add(a.Id);
        }
    }
    if (accountIds.size() > 0) {
        Contact[] updates = [
                select Id, AccountId
                from Contact
                where AccountId in :accountIds
                ];
        for (Contact c : updates) {
            Account a = Trigger.newMap.get(c.AccountId);
            c.mailingstreet = a.BillingStreet;

        }
        update updates;
    }
    }