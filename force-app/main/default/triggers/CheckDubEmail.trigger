trigger CheckDubEmail on parker_pen__c (before update) 
{
ParkerPenClass.CheckDublication( trigger.new, Trigger.OldMap);
}