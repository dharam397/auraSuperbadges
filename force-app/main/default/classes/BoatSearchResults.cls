public class BoatSearchResults{

   
    @AuraEnabled
    public static list<Boat__c> getBoats(string boatTypeId){
        if(string.IsBlank(boatTypeId)){
            return [SELECT Id, Name,Picture__c,Contact__c,Contact__r.Name from Boat__c];
        }
        else{
            return [SELECT Id, Name,Picture__c,Contact__c,Contact__r.Name from Boat__c where BoatType__c =: boatTypeId];
        }
    }
    @AuraEnabled
    public static list<BoatType__c> getBoatTypes(){
        return [SELECT Name FROM BoatType__c];
    }
}