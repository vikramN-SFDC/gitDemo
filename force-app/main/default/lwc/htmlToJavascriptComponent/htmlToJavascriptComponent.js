import { LightningElement } from 'lwc';

export default class HtmlToJavascriptComponent extends LightningElement {

    letterhandler(event){

        var varhtmltojavascriptcomponent= event.target.value;
    
        alert (`you have type a letter=${varhtmltojavascriptcomponent}`);

     }
}