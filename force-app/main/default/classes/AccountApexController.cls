public with sharing class AccountApexController {
       
   @AuraEnabled(cacheable=true)
   public static list<account> filterAccountsOfType(string type){
      return[SELECT Id,name,type,Industry 
             FROM account
             WHERE type=:type
             LIMIT 5 ];
     }
}