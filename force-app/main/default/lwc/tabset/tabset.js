import { LightningElement } from 'lwc';

export default class Tabset extends LightningElement {

    VarTabOneBool;
    VarTabTwoBool;


    handelClick(event){

        let buttonclicked =event.target.label;

        switch( buttonclicked ) {
            
            case 'Show Cashless info ' : 
                  this.VarTabOneBool = true;
            break;

            case 'Show Reimbursment info' :
                this.VarTabTwoBool = true;
            break;

            case 'Hide Cashless info' :
                this.VarTabOneBool = false;
            break;

            case 'Hide Reimbursment info' :
                this.VarTabTwoBool = false;
            break;


        }
    }
    
}