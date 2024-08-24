import { LightningElement } from 'lwc';

export default class ANameParentComponent extends LightningElement {
    receivedFromChild1
    receivedFromChild2

    handleChange(event){
        this.receivedFromChild1=event.detail;

    }
    handlenameChange(event){
        this.receivedFromChild2=event.detail;

    }

}