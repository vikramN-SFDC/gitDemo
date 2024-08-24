import { LightningElement, wire,api } from 'lwc';
import { getRecord } from 'lightning/uiRecordApi';
const fields=['Account.Name','Account.Phone'];

export default class GetREcordWireDemo extends LightningElement {
   accounts
@api recordId;
@wire(getRecord, { recordId:'$recordId',fields})
accountData({data,error}){
    if(data){
        this.accounts=data;
    }if(error){
        console.log(error);
    }
}

}