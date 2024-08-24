public class accountTypeHandler {
    
    public static void accountRatingMethod(list<account>newList){
        for (account acc:newList){
            if(acc.industry=='banking'){
                acc.rating='hot';
            }             
        }
    } 
   
    public static void slaMethod(list<account>newList){
        for(account acc:newList){
            if(acc.CustomerPriority__c=='high'){
                acc.SLA__c='gold';
            }
        }
    }
}