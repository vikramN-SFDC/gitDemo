trigger PenDiscountTrigger on parker_pen__c (before insert, before update ,after insert ,after update) {
     
     
    if(trigger.isBefore== true && trigger.isInsert==true){
        ContextVariableTask.functionA();
    }
         
       
    if(trigger.isBefore== true && trigger.isUpdate==true){
        ContextVariableTask.functionB();
    }
       
    if(trigger.isAfter== true && trigger.isInsert==true){
        ContextVariableTask.functionC();
    }
       
    if(trigger.isAfter== true && trigger.isUpdate==true){
        ContextVariableTask.functionD();
    }
}