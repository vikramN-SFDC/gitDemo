import { LightningElement,track} from 'lwc';

export default class NestedObjectPrivateProperty extends LightningElement {
   @track myDetails={fname:"vikram" , lname:"nimbalkar"};

    clickHandler(event){
        this.myDetails.fname="akash";
    }
}