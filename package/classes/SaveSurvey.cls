public class SaveSurvey {
    @AuraEnabled
    public static string doSave(Survey__c surveyIs){
        
        insert surveyIs;
        return surveyIs.Id;
        
    }
   
}