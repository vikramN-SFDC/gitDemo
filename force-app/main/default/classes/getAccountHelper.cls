public with sharing class getAccountHelper {
    @AuraEnabled(cacheable=true)
    public static list<account> getAccountData(string inputIndustry){
        return [
            SELECT id,Name,Industry,Rating 
            FROM account
            WHERE Industry=:inputIndustry
            WITH USER_MODE
        ];

    }

}