public class copyAccountnumberHanlder {
    public static void copyConNumber(list <case> caseList){
        list <account> accList=new list<account>();
        
        for(case cs:caseList){
            account acc= new account();
            acc.id=cs.AccountId;
            acc.latest_case_number__c=cs.caseNumber;
            accList.add(acc);
            
        }
    if(!accList.isEmpty()){
        update accList;
          
    }
        
    }
}