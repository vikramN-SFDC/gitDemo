public class countcontacts {
    @future
    public static void numberOfContact(list<Id> accIds){
        list <account> accList =new list<account>();
        accList=[SELECT id,(SELECT id FROM contacts) FROM account WHERE Id IN:accIds];
        
        for(account acc : accList){
            acc.number_of_contact__c =acc.contacts.size();
        }
         if(!accList.isEmpty()){
        update accList;
            
    }
   
    }
}