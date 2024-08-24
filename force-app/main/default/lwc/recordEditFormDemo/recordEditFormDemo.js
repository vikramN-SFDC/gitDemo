import { LightningElement,api } from 'lwc';
import ACCOUNT_OBJECT from "@salesforce/schema/Account";
import ACCOUNT_NAME_FIELD from "@salesforce/schema/Account.Name";
import ACCOUNT_INDUSTRY_FIELD from "@salesforce/schema/Account.Industry";
import ACCOUNT_RATING_FIELD from "@salesforce/schema/Account.Rating";
import { NavigationMixin } from 'lightning/navigation';



export default class RecordEditFormDemo extends NavigationMixin (LightningElement) {
    @api recordId;
    @api objectApiName;
    fields={
        name: ACCOUNT_NAME_FIELD,
        industry:ACCOUNT_INDUSTRY_FIELD,
        rating:ACCOUNT_RATING_FIELD,
    };
    navigationHandler(event){
        let pageRef={
            type: 'standard__recordPage',
            attributes: {
                recordId:event.detail.id,
                objectApiName: this.objectApiName,
                actionName: 'view'
            }
    }   
    this[NavigationMixin.Navigate](pageRef)
    
   };
   errorHandler(event){
    const errormsgevent = new ShowToastEvent({
        title: 'Error message',
        message: event.detail.message,
        variant:"error"
            
   });
   this.dispatchEvent(errormsgevent);
}
submitHandler(event){
    event.preventDefault();
    const fields=event.detail.field;
    if(!fields.Industry){
        fields.Industry="energy";

    }
this.template.queryselector("lightning-record-edit-form").submit(fields);
}
clickHandler(){
    let inputFilds=this.template.queryselectorAll("lightning-input-field");
    inputFields.forEach((currItem)=>currItem.reset());
}
}