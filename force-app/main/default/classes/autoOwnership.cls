public class autoOwnership {

    public static void owenershipOnAccountMethod( list<account> newList){
        for(account acc:newList){
            
            if(acc.Type=='prospect'){
                acc.Ownership ='public';
            } 
            
        }
    }
}