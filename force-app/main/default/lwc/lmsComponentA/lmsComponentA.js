import { LightningElement,wire } from 'lwc';
import SAMPLEMC from "@salesforce/messageChannel/sampleMessageChannel__c"
import {MessageContext,publish} from "lightning/messageService"
export default class LmsComponentA extends LightningElement {

    inputValue
   
    @wire(MessageContext)context;
   
    inputHandler(event){
        inputValue= event.target.value;
    }

    publishMessage(){
        const message={
            messageChannel:{
                value:this.inputValue
            }

        }
        publish(this.context,SAMPLEMC,message)
    }
}