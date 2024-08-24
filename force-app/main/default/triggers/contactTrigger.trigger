trigger contactTrigger on Contact (before insert,after insert,after update,after delete) {
    if(trigger.isInsert && trigger.isBefore){
         contactTriggerHandler1.validContactMethod(trigger.new);

}
    if(trigger.isInsert && trigger.isAfter){
         contactTriggerHandler1.validContactMethod(trigger.new);

}
    if(trigger.isUpdate && trigger.isAfter){
   contactTriggerHandler1.validContactMethod(trigger.new);
        contactTriggerHandler1.validConParentChangeMethod(trigger.new,trigger.oldMap); 
    }
    if(trigger.isDelete && trigger.isAfter){
    contactTriggerHandler1.validContactMethod(trigger.old);         
 

        
    }
}