import { LightningElement } from 'lwc';

export default class AMiddleNameChild extends LightningElement {
    middleNameReceivrd
    changeHandller(event){
        this.middleNameReceivrd=event.target.value;
        const myEvent= new CustomEvent('getmiddlenameevent',{
            detail:this.middleNameReceivrd
        });
        this.dispatchEvent(myEvent);
    }
}