import { LightningElement } from 'lwc';
import opportunityList from '@salesforce/apex/impDemoController.opportunityList';
export default class ImpDemo extends LightningElement {
     
    oppConnectedCallbackVar;
    oppConnectedCallback;
    opprec;
    oppCount;
    hanleclick(){
        opportunityList({str:this.opprec})
          .then(result =>{
            this.oppCount =result;
          })
          .catch(error =>{
            console.log('Error'+Error);
          })
    }
   
    handlechange(event){
        this.opprec=event.target.value;
    }
    
    
    connectedCallback(){
        opportunityList({str:this.oppConnectedCallbackVar})
          .then(result =>{
            this.oppConnectedCallback =result;
          })
          .catch(error =>{
            console.log('Error'+Error);
          })
    }
    handlechng(event){
         this.oppConnectedCallbackVar=event.target.value
    }

}