public class AuraActionDemoController {
	
    @AuraEnabled
    public static List<Contact> getContactsByFilter(String filter) {
        List<Contact> contactList;
        if(String.isEmpty(filter)) {
            contactList = [SELECT Id, Name, Email FROM Contact LIMIT 100];
        } else {
            String filterString = '%' + filter + '%';
        	contactList = [SELECT Id, Name, Email FROM Contact WHERE Name LIKE :filterString];
        }
        return contactList;
    }
    
    @AuraEnabled
    public static List<Opportunity> getOpportunityByStage(String stage) {
        List<Opportunity> oppList = [SELECT Id, Name, StageName FROM Opportunity WHERE StageName = :stage];
        return oppList;
    }
}