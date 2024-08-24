import { LightningElement } from 'lwc';

export default class AFirstNameChild extends LightningElement {
 
     firstNameReceived
    changeHandler(event){
        this.firstNameReceived=event.target.value;
        const myEvent= new CustomEvent('getfirstnameevent',{
            detail:this.firstNameReceived
        });
        this.dispatchEvent(myEvent);
    }

   
}