import { LightningElement } from 'lwc';

export default class DemoparentCmp extends LightningElement {
    nameString
    handleChange(event){
      this.nameString=event.target.value;
    }
         
    colourHandler(event){
      this.colours=event.target.value;
    }
   colours =['Blue','Red','Orrange'];


   fruits = ['Apple','Banana','Orange'];
   fruitHandler(event){
    this.fruits=event.target.value;
   }

    alfabets=['a','b','c'];

    alfaHandler(){
      this.alfabets=event.target.value;
    }

   }
  

