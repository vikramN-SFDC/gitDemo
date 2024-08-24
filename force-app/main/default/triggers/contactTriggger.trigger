trigger contactTriggger on Contact (before insert,after insert,before update) {
    if(trigger.isInsert){
        if (trigger.isBefore){
            contactHandler.updatePhoneMethod(trigger.new);
        }
    }
    if(trigger.isUpdate){
        if (trigger.isBefore){
            contactHandler.updatePhoneMethod(trigger.new);
        }
    }
}