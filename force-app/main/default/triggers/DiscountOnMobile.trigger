trigger DiscountOnMobile on mobile__c (before insert,before update) {

       MobileTypeDemonstration.ApplyDiscountMobile(trigger.new);

}