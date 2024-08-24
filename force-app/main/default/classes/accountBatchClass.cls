public class accountBatchClass implements Database.Batchable<sObject> ,database.stateful {
    
    public decimal recordCount =0;
     
    
    public Database.QueryLocator start(Database.BatchableContext bct){
        
        return database.getQueryLocator([SELECT id,phone,industry FROM account]);
    }
    
    public void execute (Database.BatchableContext bct,list<account>accList){
        list<account>accList1=new list<account>();
        for(account acc:accList){
            acc.Industry='Banking';
               accList1.add(acc);
              }
        try{
             update accList1;
            
        }catch(exception e){
            system.debug(e);
        }
       
     
     recordCount=recordCount+accList1.size();
         system.debug(recordCount);
        }
    
    public void finish (Database.BatchableContext bct){
        system.debug('final count'+recordCount);
        
    }
}