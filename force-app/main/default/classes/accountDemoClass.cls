public with sharing class accountDemoClass {
    @AuraEnabled(cacheable=true)
   
    public static list<account>accList(){
        return [SELECT id,name,type,industry FROM account LIMIT 5];
    }

    @AuraEnabled(cacheable=true)
   
    public static list<account>accListById(string id){
        return [SELECT id,name,type,industry FROM account WHERE id=:id LIMIT 5];
    }

    @AuraEnabled(cacheable=true)
   
    public static list<account>accListwithSearch( string searchKey){
        searchKey='%'+searchKey+'%';
        return [SELECT id,name,type,industry FROM account WHERE name LIKE:searchKey LIMIT 5];
    }
}