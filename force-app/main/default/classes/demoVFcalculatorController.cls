public class demoVFcalculatorController {
    
    public integer numOne{get;set;}
    public integer numTwo{get;set;}
    public decimal result{get;set;}
    
    public  demoVFcalculatorController(apexPages.standardController sc){
        result=0;
        
    }
    public void sum(){
        result=numOne+numTwo;
        
    }
     public void sub(){
        result=numOne-numTwo;
        
    }
     public void mul(){
        result=numOne*numTwo;
        
    }
         public void div(){
        result=numOne/numTwo;
        
    }
    public void clear(){
       result=0;
     numOne=0;
        numTwo=0;
    }


}