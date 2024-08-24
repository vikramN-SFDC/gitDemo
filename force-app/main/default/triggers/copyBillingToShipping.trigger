trigger copyBillingToShipping on Account (before insert) { 
            billingToShippingTrigger.copyAddress(trigger.new);   
}