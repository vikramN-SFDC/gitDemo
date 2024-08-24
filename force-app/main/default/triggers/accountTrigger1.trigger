trigger accountTrigger1 on Account (before insert,after insert,before update,after update,before delete, after undelete) {
    if(trigger.isInsert && trigger.isBefore){
        
}
     if(trigger.isInsert && trigger.isAfter){
         accountTrigger1Handler.createConWhenCheckBoxChecked(trigger.new,trigger.oldMap);
}
     if(trigger.isUpdate&& trigger.isAfter){
         accountTrigger1Handler.createConWhenCheckBoxChecked(trigger.new,trigger.oldMap);
}
}