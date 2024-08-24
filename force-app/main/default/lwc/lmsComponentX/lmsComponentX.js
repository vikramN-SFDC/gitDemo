import { LightningElement,wire} from 'lwc';
import SAMPLEMC from "@salesforce/messageChannel/sampleMessageChannel__c"
import {subscribe,MessageContext,unsubscribe,APPLICATION_SCOPE} from "lightning/messageService"
export default class LmsComponentX extends LightningElement {
   
    receivedMessage;
    subscription;
    @wire(MessageContext) 
        context;

        subscribeMessage(){
          this.subscription =subscribe(this.context,SAMPLEMC,(message)=>this.handleMessage(message),{scope:APPLICATION_SCOPE})
        }

        handleMessage(message){
            this.receivedMessage=message.messageChannel.value ? message.messageChannel.value :"No Message published"
        }
        unsubscribeMessage(){ 
            unsubscribe(this.subscription)
            this.subscription=null
        }

}