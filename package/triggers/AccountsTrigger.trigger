trigger AccountsTrigger on Account (before Delete) 
    {
        if(Trigger.isBefore && Trigger.isDelete)
        {
            for(Account acc : Trigger.Old)
            {
                if(acc.active__C == 'Yes')
                {
                    acc.AddError('You Are Not Authorized to Delete an Active Account Record.');
                }
            }
        }
    }