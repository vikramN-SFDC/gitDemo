import { LightningElement,api,wire} from 'lwc';
import  ACCOUNT_NAME from "@salesforce/schema/Account.Name";
import  ACCOUNT_REVENUE from "@salesforce/schema/Account.AnnualRevenue";
import ACCOUNT_PHONE from "@salesforce/schema/Account.Phone";
import ACCOUNT_WEBSITE from "@salesforce/schema/Account.Website";
import {getFieldValue,getRecord,getFieldDisplayValue} from "lightning/uiRecordApi";

export default class GetRecordDemo extends LightningElement {
    @api recordId;
    accname;
    accrevenue;
    accphone;
    accwebsite;

    @wire(getRecord,{
        recordId:"$recordId",
        fields:[ACCOUNT_NAME,ACCOUNT_REVENUE,ACCOUNT_PHONE, ACCOUNT_WEBSITE]
    })outputFunction({data,error}){
        if(data){ 
        console.log("data",data);
        this.accname=getFieldValue(data,ACCOUNT_NAME);
        this.accrevenue= getFieldDisplayValue(data,ACCOUNT_REVENUE);
        this.accphone= getFieldValue(data,ACCOUNT_PHONE);
        this.accwebsite=getFieldValue(data,ACCOUNT_WEBSITE);
    }
           
        else if(error){

            console.log("error",error);
        }
            
        
    }
}