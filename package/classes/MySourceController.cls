public class MySourceController 
    {
        Public PageReference GotoTargetPage()
        {
           // PageReference pgRef = new PageReference('/apex/Accountsearch');
            PageReference pgRef = new PageReference('http://www.google.com');
            return pgRef.SetRedirect(true);
        }
    }