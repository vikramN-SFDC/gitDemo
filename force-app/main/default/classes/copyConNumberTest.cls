@isTest
public class copyConNumberTest {
@isTest
    private static void testcopyConNumberhandler(){
        
        list<account> accList =new list<account>();
        list <case> caseList =new list<case>();
        
        for(integer i=1;i<=5;i++){
            account acc =new account();
            acc.name ='test'+i;
            accList.add(acc);
           
        }
        insert accList;
        
        for(account acc: accList){
            case cs =new case();
            cs.status='new';
            cs.origin= 'phone';
            cs.accountId=acc.Id;
            caseList.add(cs);
        }
        test.startTest();
        insert caseList;
        test.stopTest();
    
        list<account> updatedAccount=[select Id,Latest_case_number__c from account where Id =:caseList[0].Id];
       
}
    }