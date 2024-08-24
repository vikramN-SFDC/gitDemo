import { LightningElement } from 'lwc';

export default class C2pParentComponant extends LightningElement {
         receiveData
    handleChange(event){
        this.receiveData=event.detail;
    }
 receivedClr
    clrHandler(event){
             this.receivedClr=event.detail;
    }
    receivedAlfa
    alfabHnadler(event){
        this.receivedAlfa=event.detail;
    }
    receivedFruit
    fruitParenttHandler(event){
        this.receivedFruit=event.detail;
    }

        receiverdAlfa
        alfHandler(event){
            this.receiverdAlfa=event.detail;
        }
    
}