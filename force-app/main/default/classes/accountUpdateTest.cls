@isTest()
public class accountUpdateTest {
  @isTest
    private static void accountTest(){
        account acc = new account();
        acc.name='test';
        acc.Active__c='no';
        acc.Rating='cold';
        insert acc;
       
        contact con =new contact();
        con.FirstName='test';
        con.LastName='test';
        con.AccountId=acc.id;
        insert con ;
        
        accountUpdate.accountToBeUpdated();
        
        account updatedAccount =[SELECT id,active__c,rating FROM account WHERE id=: acc.id];
        
        System.assertEquals('hot',updatedAccount.rating);
        
    }
}