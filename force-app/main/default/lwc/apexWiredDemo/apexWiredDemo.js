import { LightningElement,wire } from 'lwc';
import getaccountlist from '@salesforce/apex/accountController.getAccountList'
export default class ApexWiredDemo extends LightningElement {
    @wire(getaccountlist)
    accounts
}