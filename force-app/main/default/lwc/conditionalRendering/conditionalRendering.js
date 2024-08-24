import { LightningElement } from 'lwc';

export default class ConditionalRendering extends LightningElement {
    displayMessage="false";
    changeHandler(event){
        //event.target.value
        this.displayMessage=!this.displayMessage;
    }
}