public with sharing class boatServiceController {
    @AuraEnabled
    public static List<BoatType__c> getBoatTypes()
    {
    List<BoatType__c> boatTypeList=[Select Id,Name FROM BoatType__c];
    return boatTypeList;
    }
    @AuraEnabled
    public static void addBoat(BoatType__c boatType){
        try {

            Boat__c boat = new Boat__c();
            boat.BoatType__c = boatType.Id;
            insert boat;
            
        } catch (Exception e) {
            throw new AuraHandledException(e.getMessage());
        }
    } 
}