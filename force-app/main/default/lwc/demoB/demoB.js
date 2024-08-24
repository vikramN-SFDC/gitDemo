import { LightningElement,api } from 'lwc';

export default class DemoB extends LightningElement {
    colours = ['red','green','blue'];
    handleClick(){
        const evnt =new CustomEvent('clrEvent',
            {detail:colours});       
 this.dispatchEvent(evnt);
    }
}