public with sharing class oportunityHandller {

    @AuraEnabled
    public static list<opportunity>oppList() {

        return[SELECT id,Name,Amount,StageName,CloseDate  FROM opportunity limit 5];

    }
}