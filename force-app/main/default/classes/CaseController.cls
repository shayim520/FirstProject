public with sharing class CaseController {
   
@AuraEnabled(cacheable=true)
public static List<Case> get5CasesByStatus(String status){

    return [SELECT Id,CaseNumber, Status, Subject, Priority
    From Case WHERE Status = 'New'
    LIMIT 5 ];
    
}
   

}