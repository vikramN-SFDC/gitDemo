import { LightningElement } from 'lwc';

export default class ParentComposition extends LightningElement {
    firechildDivhandler(){
        console.log("Event handled at parent component-At Div level");
    }
    firechildhandler(){
        console.log("Event handled at parent component-At child level");
    }
}