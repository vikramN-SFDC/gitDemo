import { LightningElement } from 'lwc';

export default class C2pChildComponant extends LightningElement {
    inputData
    handleNameChange(event){
        this.inputData=event.target.value;
 }

 handleClick(){
    const event = new CustomEvent('childevent',{
        detail: this.inputData
    });
    this.dispatchEvent(event);
 }
 colourList=['red','pink','yellow']
 colourHandler(){
    const clr =new CustomEvent('clrevent',{
        detail:this.colourList
    });
    this.dispatchEvent(clr);
 }
  alfabet=['a','b','c','d']
  alfaHandler(){
   const alf=new CustomEvent('alfaevent',{
    detail:this.alfabet
   });
   this.dispatchEvent(alf);
  }
 
  fruits=['banana','apple', 'orange','grapes']
  fruitHandler(){
    const fruit=new CustomEvent('fruitEvent',{
        detail:this.fruits
    });
    this.dispatchEvent(fruit);
  }

  alfabets=['a','b','c','d'];
  alfaHandler(){
    const alfabet=new CustomEvent('AlfabetEvent',{
        detail:this.alfabets
    });
    this.dispatchEvent(alfabet);
  }
  }
 
  