import { LightningElement,api } from 'lwc';

export default class DynamicRecordObject extends LightningElement {
    @api recordId;
    @api objectApiName;
}