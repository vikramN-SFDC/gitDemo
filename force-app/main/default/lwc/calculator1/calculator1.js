import { LightningElement } from 'lwc';

export default class Calculator1 extends LightningElement {
numberone="";
numbertwo="";
result=0;

changeHandler(event){
   // let name=event.target.name;
    //let value=event.target.value;
    let {name,value}=event.target;
   
    if(name=== "number1"){
        this.numberone=value;
    }
    else if(name==="number2"){
        this.numbertwo=value;
    }
}   
  
    addHandler(event){
        this.result=parseInt ( this.numberone)+ parseInt( this.numbertwo)
    }
    subHandler(event){
        this.result=parseInt ( this.numberone)-parseInt( this.numbertwo)
    }
    mulHandler(event){
        this.result=parseInt ( this.numberone)* parseInt( this.numbertwo)
    }
    divHandler(event){
        this.result=parseInt ( this.numberone)/ parseInt( this.numbertwo)
    }
}