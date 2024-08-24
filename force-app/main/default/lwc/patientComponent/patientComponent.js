import { LightningElement } from 'lwc';

export default class PatientComponent extends LightningElement {

    booleanFlagValue=false;

    showform(){
        this.booleanFlagValue=true;
    }
   
    hideform(){
        this.booleanFlagValue=false;
    }
}