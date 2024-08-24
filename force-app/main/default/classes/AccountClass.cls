public with sharing class AccountClass {
   @AuraEnabled (cacheable=true)
   public static list<account> getAccounts(string searchTextClass){
    try {
        if(string.isEmpty(searchTextClass))
       
        {
            return[SELECT id,name FROM account];
        }
        else{
            searchTextClass='%'+searchTextClass+'%';
            return[SELECT id,name FROM account WHERE name LIKE :searchTextClass];
        }
       
        
    } catch (Exception e) {
        throw new AuraHandledException(e.getMessage());
    }
   }
}