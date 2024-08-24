import { LightningElement,wire} from 'lwc';
import findAccountOfType from "@salesforce/apex/AccountApexController.filterAccountsOfType"

export default class WireApexWithParam extends LightningElement {
    selectedType=''
    @wire(findAccountOfType, {type:'$selectedType'})
    filteredAccounts

    get typeOptions(){
        return[
            {label:"customer-channel", value:"customer-channel"},
            {label:"customer-Direct", value:"customer-Direct"}

        ]
    }

    selectHandler(event){
        this.selectedType=event.target.value
    }
}