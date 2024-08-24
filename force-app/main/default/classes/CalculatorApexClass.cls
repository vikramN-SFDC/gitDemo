public class CalculatorApexClass {

    
private static integer VarSum ;
private static integer VarMultiplication ;
   
public static integer MakeAddition(integer VarNumA,integer VarNumB){
        VarSum = VarNumA+VarNumB;
     return VarSum;
    }
  
 public static void MakeMultiply(integer VarnumC ,integer VarNumD){
     
        VarMultiplication=VarNumC*VarNumD;
      system.debug('The answer='+VarMultiplication);
          
    }
}