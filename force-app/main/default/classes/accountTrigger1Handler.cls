public class accountTrigger1Handler {
    
    public static void createConWhenCheckBoxChecked(list<account> accList, map<Id,account> accOldMap){
        list<contact>conList=new list<contact>();
        for(account acc:accList){
            if(acc.Create_contact__c== true &&(accOldMap.get(acc.id).Create_contact__c == false || accOldMap == null )){
                contact con =new contact();
                con.lastName=acc.name;
                con.accountId=acc.Id;
                conList.add(con);
                 }
        }
        if(conList.size()>0)
        insert conList;
    }
  
    }