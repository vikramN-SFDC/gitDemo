import { LightningElement,wire } from 'lwc';
import accList from'@salesforce/apex/accountDemoClass.accList'
export default class ApexWireDemo extends LightningElement {
  listOfAccount
  @wire (accList)
  
  accounts

  
}