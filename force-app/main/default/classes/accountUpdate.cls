public class accountUpdate {
    public static void accountToBeUpdated(){
        list<account> accList= new list<account>();
        set<Id>accIdSet =new set<id>();
        
        for(contact con:[SELECT id,account.id FROM contact WHERE account.id!= NULL]){
            if( !accIdSet.contains(con.account.id)){
                account acc =new account();
                acc.Active__c='yes';
                acc.Id=con.account.id;
                acc.Rating='hot';
                accList.add(acc);
                accIdSet.add(con.account.Id);
                
            }
            
        }
        if(!accList.isEmpty()){
            update accList;
        }

    }

}