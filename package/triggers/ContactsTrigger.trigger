trigger ContactsTrigger on Contact (before insert, before update) 
    {
        if(Trigger.isBefore && (Trigger.isInsert || Trigger.isUpdate))
        {
            for(Contact con : Trigger.New)
            {
                if(con.Phone == null || con.Phone == '')
                {
                    con.Phone.AddError('Please Enter the Contact Number.');
                }
                else if(con.Fax == null || con.Fax == '')
                {
                    con.Fax.AddError('Please Enter the Fax Number.');
                }
                else if(con.Email == null || con.Email == '')
                {
                    con.Email.AddError('Please Enter the Email Id.');
                }            
            }
        }
    }