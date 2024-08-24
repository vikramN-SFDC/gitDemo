public class soqlDemoClass {
    
    public static void staticsoql(){
        set<id> accountId=new set<id>();
        
        for(account acc:[select id,name,phone,(select id,phone from contacts),
                         (select id,Amount,Name from Opportunities)
                         from account])
            
        {   
            for(contact con:acc.contacts){
                con.Phone=acc.phone;
            }
            
           
            
            for (opportunity opp:acc.Opportunities){
                system.debug('opportunity-->'+opp);
            }
            update acc;
        }
        
        
    }
    
    
    
   public static void dynamicsoql(string fieldSet, string objectApiName){
        string str= 'select' + fieldSet +'from'+objectApiName;
        
        system.debug(database.query(str));
        
    }
}