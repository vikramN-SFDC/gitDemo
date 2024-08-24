public class demoaDatabaseMethod {
    
    public static void excepionHandlingMethod(){
           account acc =new account();
        try {
           // acc.Name='demo name';
            acc.Active__c = 'Yes';
            acc.Rating='Hot';
            acc.Industry='Media';
            insert acc;
    
} catch(DmlException e) {
    System.debug('The following exception has occurred: ' + e.getMessage());
}
        
         contact con =new contact();
        con.FirstName='vikram';
        con.LastName='nimbalkar';
        con.Birthdate=system.today()-8000;
       system.debug('contact-->'+con);  
        
    }

}