import { LightningElement } from 'lwc';
import oppList from'@salesforce/apex/oportunityHandller.oppList';
export default class ImperativeMethod extends LightningElement {
    oppData;
    changeHandler(){
        oppList()
        .then(result=>{
            this.oppData=result;
        }).catch(error=>{
            console.log(error);
        })
    
    }
  
    
}