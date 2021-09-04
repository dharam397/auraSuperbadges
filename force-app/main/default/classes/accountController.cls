public with sharing class accountController {
    @AuraEnabled(cacheable=true)
    public static List<Note> getNotes(Id accId) {
        return [
            SELECT Body,CreatedById,CreatedBy.Alias,CreatedDate,Id,ParentId,Title 
            FROM Note WHERE ParentId =:accId
            WITH SECURITY_ENFORCED 
        ];
    }
}