public class BoatSearchFormController {

    @AuraEnabled
    public static list<BoatType__c> getBoatTypes(){
        
        return [SELECT Id, Name from BoatType__c];
    }
}