import { LightningElement,wire,api} from 'lwc';
import accRecords from '@salesforce/apex/wireCompoController.accRecords';

export default class wireCompo1 extends LightningElement {
   
  wiredfunction; 
  totalrec
  @api recordId;
  @wire(accRecords,{recId:'$recordId'})   
   wiredAccount({data,error}){
     if(data){
      this.totalrec =data;
     }
     if(error){
      console.log('error'+error);
     }
   }
    
   handleChange(event){
    this.wiredfunction=event.target.value;
   }

}



