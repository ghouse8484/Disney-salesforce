public class surveysavecontroller{

 //added an instance varaible for the standard controller
    private ApexPages.StandardController controller {get; set;}
   
    private Survey__c a;
    
    public surveysavecontroller(ApexPages.StandardController controller) {

        //initialize the stanrdard controller
        this.controller = controller;
        this.a = (Survey__c)controller.getRecord();

    }

    public PageReference saverecord() {
    
    
    insert a;
    PageReference pg = new PageReference('/apex/SurveyThanks');
    return pg;
    }


}