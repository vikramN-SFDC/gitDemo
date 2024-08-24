public class accountTriggerHandller {
    public static void updateContact(list <account> accList,map<Id,account> accoldMap){
        list <contact> conList = new list<contact>();
        set<Id>  accIds = new set<Id>();
        
        for(account acc : accList){
            if(acc.phone !=accoldMap.get(acc.id).phone){
                accIds.add(acc.id);
            }
        }
        
        for(account acc:[SELECT Id,phone,(SELECT Id FROM contacts)FROM account WHERE Id IN:accIDs]){
            if(acc.contacts!=null){
                for(contact cont : acc.contacts){
                    cont.HomePhone =acc.phone;
                    conList.add(cont);
                }
            }
            if(!conList.isEmpty()){
                update conList;
            }
        }
        
    }
}