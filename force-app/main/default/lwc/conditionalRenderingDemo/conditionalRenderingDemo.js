import { LightningElement } from 'lwc';

export default class ConditionalRenderingDemo extends LightningElement {
isVisible=false;
name
    handleClick(event){
        this.isVisible=true;

    }
     onKeyUp(event){
        this.name= event.target.value;

    }
    checknameHandler(){
        this.name==='vikram'
    }
}