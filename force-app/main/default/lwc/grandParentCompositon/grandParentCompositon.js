import { LightningElement } from 'lwc';

export default class GrandParentCompositon extends LightningElement {
    firechildHandler(){
            console.log("Event handled at Grand parent component");
        }
    }