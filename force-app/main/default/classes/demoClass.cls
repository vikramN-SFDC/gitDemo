public class demoClass {
    public static void addOpp(){
        
        list <account> accList= new list <account>();
        list<opportunity> oppList= new list<opportunity>();
        accList=[SELECT name FROM account WHERE createdDate=this_year];
        
        if(!acclist.isEmpty()){
            for(account acc: accList){
                opportunity opp =new opportunity();
                opp.name=acc.name;
                opp.CloseDate=system.today();
                opp.StageName='prospecting';
                opp.AccountId=acc.id;
                oppList.add(opp);
            }
            if(oppList.size() >0 ){
                insert oppList;
            }
        }
        
        
    }
    
}