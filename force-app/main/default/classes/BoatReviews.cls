public with sharing class BoatReviews {
    @AuraEnabled
    public static List<BoatReview__c> getAll(Id boatId){
        List<BoatReview__c> boatReviews = [SELECT Id, Name, Comment__c,
                        Rating__c, LastModifiedDate,
                        CreatedDate, CreatedBy.Name, CreatedBy.SmallPhotoUrl,
                        CreatedBy.CompanyName FROM BoatReview__c WHERE Id=:boatId
                        WITH SECURITY_ENFORCED];
        return boatReviews;
    }
}