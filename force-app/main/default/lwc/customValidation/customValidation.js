import { LightningElement } from 'lwc';

export default class CustomValidation extends LightningElement {
    validateInfo() {

        //taking reference of component in html

        let name1Cmp= this.template.querySelector(".nameCmp");
        let dateCmp= this.template.querySelector(".dateCmp");
      
        //fetching values

        let searchValue=name1Cmp.value;
        let dtValue=dateCmp.value;

        //check if name is blank
        if(!searchValue) {
            name1Cmp.setCustomValidity("Name value is required");
        }else
        {
            name1Cmp.setCustomValidity(" ");
        }
        name1Cmp.reportValidity();

        //check if date is blank
        if(!dtValue){
            dateCmp.setCustomValidity("Date is required");
        }else{
            dateCmp.setCustomValidity(" ");
        }

            dateCmp.reportValidity();


        }

    }