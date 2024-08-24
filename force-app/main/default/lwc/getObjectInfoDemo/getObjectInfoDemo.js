import { LightningElement,wire } from 'lwc';
import {getObjectInfo} from "lightning/uiObjectInfoApi";
import ACCOUNT_OBJECT from '@salesforce/schema/Account';
export default class GetObjectInfoDemo extends LightningElement {
accountInfo;
accoutnError;
    @wire (getObjectInfo,{
        objectApiName:ACCOUNT_OBJECT 
    })
    outputFunction({data,error}){
        if(data){
            console.log("account info data",data);
            this.accountInfo=data;
            this.accoutnError=null;
        } else if(error){
            console.log("Error",error);
            this.accountInfo=null;
            this.accoutnError=error;
        }
    }
}