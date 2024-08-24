public  class wireCompoController {
   
  @AuraEnabled(cacheable=true)

  public static list<Account> accRecords(id recId){
    
    return[SELECT id,Name,Industry,Rating FROM Account WHERE Id =: recId];
   }

   
}