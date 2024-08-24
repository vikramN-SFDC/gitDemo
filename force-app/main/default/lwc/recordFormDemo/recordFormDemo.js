import { LightningElement,api } from 'lwc';
import { ShowToastEvent } from 'lightning/platformShowToastEvent';

import NAME_FIELD from "@salesforce/schema/Account.Name";
import INDUSTRY_FIELD from "@salesforce/schema/Account.Industry";
import RATING_FIELD from "@salesforce/schema/Account.Rating";
import REVENUE_FIELD from "@salesforce/schema/Account.AnnualRevenue";
import { NavigationMixin } from 'lightning/navigation';


export default class RecordFormDemo extends LightningElement {
    @api recordId;
    @api objectApiName;
    fieldList=[NAME_FIELD,INDUSTRY_FIELD,RATING_FIELD,REVENUE_FIELD];


    showToast() {
        const event = new ShowToastEvent({
            title: 'Get Success',
            message:'Record updated successfully',
            variant:'success'       
         });
        this.dispatchEvent(event);
    }
    navigateTorecordPage(event){
        console.log ("Event detail",event.detail);
        
      //  let pageref={type: 'standard__recordPage',
       // attributes: {
           // recordId: "$recordId",
           // objectApiName: "PersonAccount",
          //  actionName: "view"}
        
    
};
    }