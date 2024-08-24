import { LightningElement } from 'lwc';

export default class PubsubComponentB extends LightningElement {
    connectedCallback(){
        this.callSubscriber()
    }
    callSubscriber(){
        Pubsub.subscribe('componentA',(message)=> {
            this.message=message
        })
    }
}