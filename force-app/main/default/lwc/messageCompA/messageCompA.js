import { LightningElement,wire} from 'lwc';
import MSGCH from'@salesforce/messageChannel/sampleMessageChannel__c';
import {publish,MessageContext} from 'lightning/messageService';
export default class MessageCompA extends LightningElement {
    @wire(MessageContext)
    Context;
    inputData
    chnageHandler(event){
        this.inputData=event.target.value;
    }

    handleSubmit(){
      const message={
        messageChannel:{
            value:this.inputData
        }
        };
        publish(this.Context,MSGCH,message);
    }
  
}