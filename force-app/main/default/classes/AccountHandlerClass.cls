public class AccountHandlerClass {
    public static void UpdateRating(list <account>AccList){
        for(account acc : acclist){
            if(acc.Industry== 'Energy' || acc.Industry =='Transport'){
                acc.Rating='Hot';
            }
        }
    }
    public static void CopyBillingToShiping(list <account>AccList){
       for(account acc : acclist){
           if(acc.CopyBillingToShiping__c && acc.BillingCity != null){
               acc.ShippingCity =acc.BillingCity;
               acc.ShippingState=acc.BillingState;
               acc.ShippingCountry =acc.BillingCountry;
               acc.ShippingStreet = acc.BillingStreet;
               acc.ShippingPostalCode = acc.billingPostalCode;
           }
           
       }               
    }

    public static void reatedRelatedContact(list<account> accList){
        list <contact> ConList =new list<contact>();
        for(account acc: accList ) {
           contact con =New contact();
        con.FirstName = 'Test';
        con.LastName = 'LastName';
            con.AccountId= acc.id;
            ConList.add(con);
        }
        if(!ConList.isEmpty()){
            insert ConList;
   }
}
}