@istest
public class countcontactstest {
@istest
    private static void numberOfContactTest(){
        list <account> accList =new list<account>();
        for(integer i=0;i<10;i++){
           accList.add(new Account(name='test'+i));
        }
        insert accList;
        
        list<contact>conList=New list<contact>();
        list<id> accIds =new list<id>();
        for(account acc :accList){
            conList.add(new contact(FirstName='Test',LastName=acc.name,accountId=acc.id));
            accIds.add(acc.id);
            
        }
        insert conList;
        test.startTest();
        countcontacts.numberOfContact(accIds);
        test.stopTest();
        
        list<account> accs=[SELECT id,number_of_contact__c FROM account];
        system.assertEquals(1, accs[0].number_of_contact__c);
    }
}