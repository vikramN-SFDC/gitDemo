import { LightningElement,wire } from 'lwc';
import MSGCH from'@salesforce/messageChannel/sampleMessageChannel__c';
import {subscribe,unsubscribe,MessageContext, APPLICATION_SCOPE } from 'lightning/messageService';
export default class MessageCompB extends LightningElement {
    @wire(MessageContext)Context;
    receivedMessage;
    subscription;
    subscriberHandler(){
        this.subscription=subscribe(this.Context, MSGCH, (message)=>this.messageHandler(message),{scope:APPLICATION_SCOPE})
    }
    messageHandler(message){
        this.receivedMessage=message.messageChannel.value ? message.messageChannel.value :'no data';
        
    }
    unsubscribeHandler(){
        unsubscribe(this.subscription)
    }

    
}