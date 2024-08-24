@isTest
public class accountTrigger1Test {
    @testSetup static void AccountTestData()
    { 
       
          account acc=new account();
       acc.name='abc';
        //acc.phone='9890092272';
        acc.number_of_contact__c=1;
        //acc.fax='9890092272';
        acc.Restored__c= false;
            
       insert acc;

    }
    @isTest
    
   private static void CreateNewContactTest(){
        list<account> accList=[SELECT id,name,(SELECT id,accountId FROM contacts) FROM account ];
      system.assertEquals(4,accList[0].contacts.size(),'there is error');
    }
    
     @isTest
  private static void afterUpdateMethodtest(){
         list<account> accList=[SELECT id,name,phone FROM account LIMIT 1];
        
            contact con=new contact();
            con.LastName=accList[0].name;
            con.AccountId=accList[0].id;
        
            insert con;
         test.startTest();
    accList[0].phone='8909985643';
      update accList;
       test.stopTest();
        list<contact> conlist1=[SELECT id,phone FROM contact WHERE accountId =: accList[0].id];
        system.assertEquals( accList[0].phone,conlist1[0].phone,'error');
    }
  
    @istest
     private static void deleteRelatedoppmethodTest(){
     list<account> accList=[SELECT id,name,phone FROM account LIMIT 1];
         opportunity opp= new opportunity();
         opp.CloseDate=system.today();
         opp.StageName='prospecting';
         opp.Name=accList[0].name;
         opp.Amount=10000;
         opp.AccountId=accList[0].id;
         insert opp;
          test.startTest();
        boolean exceptionThrown=false;
            
         try{
                 delete(accList[0]);
            }
         catch(exception e){
             exceptionThrown=true;
             boolean expectedexceptionThrown =(e.getMessage().contains('You can not delete account where opportunity are available'))? true: false ;
              system.assertEquals(true,expectedexceptionThrown,e.getMessage());
         }
        
         test.stopTest();
          system.assertEquals(true,exceptionThrown,'error');
        
          
     }
     @isTest
    private static void afterUndeleteMethodtest(){
        list<account> accList=[SELECT id,name,Restored__c FROM account];
        delete accList;
        list<account> accList1=[SELECT id,name,isDeleted,Restored__c FROM account where isDeleted=true All rows];
        test.startTest();
        undelete accList1; 
        test.stopTest();
        list<account> updatedaccList =[SELECT id,name,isDeleted,Restored__c FROM account];
        system.assertEquals(true,updatedaccList[0].Restored__c,'error');
    }  
      @isTest
    private static void checkPhoneNumbertest(){
          account acc=new account();
             acc.name='abc';
            acc.phone='989002083';
       
        
         boolean checkPhoneBoolean= false;
        try{
           insert acc;
        }
        catch(exception e){
            checkPhoneBoolean=true;
        }
        system.assertEquals(true,checkPhoneBoolean,'error');
    }
    }