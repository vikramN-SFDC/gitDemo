public class MobileTypeDemonstration {
     public static void ApplyDiscountMobile(list<mobile__c>VarMobilesListNew){
     for(mobile__c VarP:VarMobilesListNew) 
     { 
      if(VarP.brand__c =='samsung'){
      VarP.Price__c=VarP.Price__c-(VarP.Price__c*10)/100 ;
      VarP.discount_status__c='Congratulations!You got 10% discount';
      }
      
      
     else if(Varp.brand__c =='apple'){
      VarP.Price__c=VarP.Price__c-(VarP.Price__c*15)/100 ;
      VarP.discount_status__c='Congratulation!You got 15% discount';
      }
      
      
      
    }
  } 
}