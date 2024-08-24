import { LightningElement } from 'lwc';

export default class DynamicCss extends LightningElement {
    pcolor="green-border";
   
    addCSSHandler(event ){
        let element=this.template .querySelector("p");
        element.classlist.add("chocolate-color");
    }
    removeCSSHandler(event){
        let element=this.template .querySelector("p");
        element.classlist.remove("chocolate-color");
    }
    toggleCSSHandler(event){
        let element=this.template .querySelector("p");
        element.classlist.toggle("chocolate-color");
    }
}