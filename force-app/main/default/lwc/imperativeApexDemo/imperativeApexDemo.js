import { LightningElement,wire } from 'lwc';
import getAccountData from"@salesforce/apex/getAccountHelper.getAccountData";
import { getObjectInfo, getPicklistValues } from 'lightning/uiObjectInfoApi'
import ACCOUNT_INDUSTRY from '@salesforce/schema/Account.Industry'
import ACCOUNT_OBJECT from "@salesforce/schema/Account"

export default class ImperativeApexDemo extends LightningElement {
    data=[];
    options=[];
    columns = [
        { label: 'Account Name', fieldName: "Name" },
        { label: 'Account Industry', fieldName: "Industry"},
        { label: 'Account Rating', fieldName: "Rating" }
    ];
    selectedIndustry;
     
    
    @wire(getObjectInfo,{
        objectApiName:ACCOUNT_OBJECT
    })
    accountInfo;
    @wire(getPicklistValues,{
        recordTypeId:"$accountinfo.data.defaultRecordTypeId",
        fieldApiName:ACCOUNT_INDUSTRY
    })industryPickList;

handleChange(event){
   this.selectedIndustry=event.target.value;
}

    clickHandler(){
        getAccountData({
            inputIndustry:this.selectedIndustry
        })
        .then((result)=>{
            console.log("account records",result);
            this.data=result;

        })
        .catch((error)=>{
            console.log("account error",error);
        });
    }
}