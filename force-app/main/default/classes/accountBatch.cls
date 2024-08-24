@isTest
public class accountBatch {
    @isTest
    public static void accountBatchClassTest(){
        account acc= new account();
        acc.name='abc';
        acc.phone='9890020838';
        insert acc;
        
        acc.Industry='Banking';
        
        test.startTest();
        accountBatchClass acc1= new accountBatchClass();
        database.executeBatch(acc1,10);
         update acc;
        test.stopTest();
        system.assertEquals('banking',acc.Industry,'error');
        
        
        
        
    }

}