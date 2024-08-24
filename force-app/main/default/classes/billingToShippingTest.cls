@isTest
public class billingToShippingTest {
@isTest
    public static void copyAddressTest(){
        list <account> accList =new list<account>();
        
        for(Integer i=1;i<=5;i++){
            account acc =new account();
            acc.name='test'+i;
            acc.BillingCity='TestCity';
             acc.CopyBillingToShiping__c=true;
            accList.add(acc);
        }
        test.startTest();
        insert accList;
        test.stopTest();
         
        list<account>updatedAccList=[select id,BillingCity FROM account where Id=: accList[0].Id];
        
        system.assertEquals('TestCity',updatedAccList[0].BillingCity);
    }
}