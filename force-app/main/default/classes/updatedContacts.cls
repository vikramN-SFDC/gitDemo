public class updatedContacts {
    public static void contactUpdate(list<account>accList, map<id,account>accOldMap){
        list <contact> conList = new list <contact>();
        map<id,account> accMap = new map <Id,account>();
        
        for(account acc:accList){
            if(acc.phone !=accoldMap.get(acc.id).phone){
                accMap.put(acc.id,acc);
                
                for(Contact con:[SELECT id,Homephone,AccountId FROM contact WHERE AccountId IN:accMap.Keyset()]){
                    
                    con.HomePhone=accMap.get(con.AccountId).phone;
                    conList.add(con); 
                }
                
                if(!conList.isEmpty()){
                    update conList;
                }
            }
            
        }
    }
}