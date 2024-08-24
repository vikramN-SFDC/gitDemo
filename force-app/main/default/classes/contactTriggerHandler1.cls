public class contactTriggerHandler1 {
    
    public static void validContactMethod(list<contact> conList) {
        
        set<id> accIdSet=new set<id>();
        for(contact con:conList){
            accIdSet.add(con.accountId);
        }
        
        list <account> accList=[SELECT id,number_of_contact__c,
                                (SELECT id,accountId FROM contacts)
                                FROM account WHERE id IN:accIdSet];
        
        list<account> numberOfcontactsOnAccount =new list<account>();
        for(account acc:accList){
            acc.number_of_contact__c=acc.contacts.size();
            numberOfcontactsOnAccount.add(acc);
        }
        update numberOfcontactsOnAccount;
        list<account> numberOfcontactsOnAccount1 =new list<account>();
        list <account> accList1=[SELECT id,number_of_valid_contact__c,
                                 (SELECT id,accountId,valid_contact__c FROM contacts WHERE valid_contact__c= true )
                                 FROM account  WHERE id IN:accIdSet];
        
        for(account acct:accList1){
           acct.number_of_valid_contact__c=acct.contacts.size();
            numberOfcontactsOnAccount1.add(acct);
        }
        update numberOfcontactsOnAccount1;
    }
    
    public static void validConParentChangeMethod(list<contact> conList,map<id,contact> oldMapOfAccount){
        set<id> setOfAccountId =new set<id>();
        set<id> setOfNewAccountId =new set<id>();

        for(contact con:conList){
            if(con.accountId!= null && con.accountId!= oldMapOfAccount.get(con.id).accountId){
                setOfAccountId.add(oldMapOfAccount.get(con.id).accountId);
                setOfNewAccountId.add(con.Accountid);
            }
            }
         list <account> accList=[SELECT id,number_of_contact__c,
                                (SELECT id,accountId FROM contacts)
                                FROM account WHERE id IN:setOfAccountId];
        
        list<account> numberOfcontactsOnAccount =new list<account>();
        for(account acc:accList){
            acc.number_of_contact__c=acc.contacts.size();
            numberOfcontactsOnAccount.add(acc);
        }
           update numberOfcontactsOnAccount;
         
        list <account> accList1=[SELECT id,number_of_contact__c,
                                (SELECT id,accountId FROM contacts)
                                FROM account WHERE Id IN:setOfNewAccountId];
        
        list<account> numberOfcontactsOnAccount1 =new list<account>();
        for(account acc:accList1){
            acc.number_of_contact__c=acc.contacts.size();
            numberOfcontactsOnAccount1.add(acc);
        }
       
        update numberOfcontactsOnAccount1;
        }
    }