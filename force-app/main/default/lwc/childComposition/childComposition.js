import { LightningElement } from 'lwc';

export default class ChildComposition extends LightningElement {
    clickHandler(event){

        let myCustomEvent=new CustomEvent("fire",{
            bubble:true ,
            composed:true
        });
        this.dispatchEvent( myCustomEvent);
    }
}