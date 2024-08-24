trigger opportunityTrigger on Opportunity (before insert, after insert,after update,after delete) {
    if(trigger.isInsert && trigger.isBefore){
        OpportunityTriggerHandler.UpdateDescription(trigger.new);
    }
    if(trigger.isInsert && trigger.isAfter){
        OpportunityTriggerHandler.populatHighestOpportunityAmount(trigger.new);
       OpportunityTriggerHandler.populateNumberOfOpportunity(trigger.new);
         OpportunityTriggerHandler.populatHighestOpportunityAmountID(trigger.new);
         OpportunityTriggerHandler.updateOpportunityStatus(trigger.new);
    }
    if(trigger.isUpdate && trigger.isAfter){
        
             OpportunityTriggerHandler.populatHighestOpportunityAmount(trigger.new);
        OpportunityTriggerHandler.populateNumberOfOpportunity(trigger.new);
           OpportunityTriggerHandler.populatHighestOpportunityAmountID(trigger.new);
        OpportunityTriggerHandler.updateOpportunityStatus(trigger.new);
        
    
    }
    if(trigger.isDelete && trigger.isAfter){
      OpportunityTriggerHandler.populateNumberOfOpportunity(trigger.old);
        
    }
}