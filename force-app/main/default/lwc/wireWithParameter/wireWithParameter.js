import { LightningElement,wire } from 'lwc';
import accListById from "@salesforce/apex/accountDemoClass.accListById"

export default class WireWithParameter extends LightningElement {
    accountId
   @wire(accListById,{id:'$accountId'}) 
   filteredAccount

chnageHandler(event){
    this.accountId=event.target.value;

}
}