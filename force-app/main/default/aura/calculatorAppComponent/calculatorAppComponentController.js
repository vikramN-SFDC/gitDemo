({
    add: function(component, event, helper) {
        var num1=parseInt(component.get("v.firstNumber"));
        var num2=parseInt(component.get("v.secondNumber"));
        var res= num1 + num2;
        component.set("v.result",res);
        component.set("v.isAdd",true);
        component.set("v.isSub",false);
        component.set("v.isMul",false);
        component.set("v.isDiv",false);
        component.set("v.isClear",false);
        
    },
    
    sub: function(component, event, helper) {
        
        component.set("v.result",(component.get("v.firstNumber")-component.get("v.secondNumber")));
        component.set("v.isSub",true);
        component.set("v.isAdd",false);
        component.set("v.isMul",false);
        component.set("v.isDiv",false);
        component.set("v.isClear",false);
    },
    mul: function(component, event, helper) {
        
        component.set("v.result",(component.get("v.firstNumber")*component.get("v.secondNumber")));
        component.set("v.isAdd",false);
        component.set("v.isSub",false);
        component.set("v.isMul",true);
        component.set("v.isDiv",false);
        component.set("v.isClear",false);
    }, 
    div: function(component, event, helper) {
        
        component.set("v.result",(component.get("v.firstNumber")/component.get("v.secondNumber")));
        component.set("v.isAdd",false);
        component.set("v.isSub",false);
        component.set("v.isMul",false);
        component.set("v.isDiv",true);
        component.set("v.isClear",false);
        
        
    },
    clear: function(component, event, helper){
        component.set("v.isClear",true);
        component.set("v.isAdd",false);
        component.set("v.isSub",false);
        component.set("v.isMul",false);
        component.set("v.isDiv",false);
        component.set("v.firstNumber",false);
         component.set("v.secondNumber",false);
                                                          
        
    }
    
})