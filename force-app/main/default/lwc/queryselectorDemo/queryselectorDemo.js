import { LightningElement } from 'lwc';

export default class QueryselectorDemo extends LightningElement {

    clickHandler(){
     const element= this.template.querySelector('h1')
     console.log(element.innerText)
    }
}