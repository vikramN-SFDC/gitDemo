import { LightningElement } from 'lwc';

export default class PubsubComponentA extends LightningElement {

    message
    clickHandler(event){
       this.message=event.target.value
    }

    publishHandler(){
        Pubsub.publish('componentA', this.message)
    }
}