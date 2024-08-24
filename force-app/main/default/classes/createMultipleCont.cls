public class createMultipleCont {
    
    public static void method1(integer n){
        for(integer i=1;i<=n;i++){
            account acc =new account();
            acc.Name ='Demo'+i;
            acc.Active__c = 'Yes';
            acc.Rating='Hot';
            acc.Industry='Media';
            insert acc;
           
            contact con =new contact();
            con.AccountId=acc.Id;
            con.Phone='9090003030'+i;
            con.LastName=acc.Name;
            insert con;
        }
        
    }
    public static void method2( integer a,integer b,string operation){
        if('Add'== operation){
           Integer ans= a+b;
            system.debug('Answer='+ans);
        } 
          else if('Sub'== operation){
           Integer ans= a-b;
            system.debug('Answer='+ans);
        }       
         else if('Mul'== operation){
           Integer ans= a*b;
            system.debug('Answer='+ans);
        }       
          else if('Div'== operation){
           Integer ans= a/b;
            system.debug('Answer='+ans);
        }    
    }
}