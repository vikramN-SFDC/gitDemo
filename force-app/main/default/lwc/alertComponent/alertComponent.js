import { LightningElement,api } from 'lwc';

export default class AlertComponent extends LightningElement {
  @api  message
  @api number
  @api isBoolean
}