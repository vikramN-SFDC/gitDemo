public class userTriggerHandler {
    public static void userDeactivateMethod(list<user>userList){
        
        set<id> userIdSet= new set<id>();
        
        for(user usr :userList){
            userIdSet.add(usr.id);
            
        }
        list<opportunity> oppList=[SELECT id,OwnerId FROM opportunity WHERE id IN:userIdSet];
    }
}