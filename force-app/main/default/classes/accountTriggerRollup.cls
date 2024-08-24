public class accountTriggerRollup {
    public static void rollupContactsclass(list<contact> conList){
        
        set<id> accountIds =new set<id>();
        for(contact con : conList)
            if(con.accountId!=null)
            accountIds.add(con.accountId);
        
list <account> accList=[SELECT id,number_of_contact__c,(SELECT id FROM contacts) FROM account WHERE id IN:accountIds];
        for(account acc :accList){
                acc.number_of_contact__c=acc.contacts.size();
            
        }
    }
}