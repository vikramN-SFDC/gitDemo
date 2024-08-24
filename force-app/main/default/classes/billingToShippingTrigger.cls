public class billingToShippingTrigger {
    
    public static void copyAddress(list<account> accList){
        for(account acc:accList){
            if(acc.CopyBillingToShiping__c &&acc.BillingCity != null ){
                acc.ShippingCity=acc.BillingCity;
                acc.ShippingCountry=acc.BillingCountry;
            }
        }
    }

}