import { LightningElement } from 'lwc';
import {NavigationMixin} from "lightning/navigation";


export default class NavigationDemo extends NavigationMixin(LightningElement) {
    clickHandler(){
        let pageReg={
            type: 'standard__namedPage',
            attributes: {
                objectApiName:'account',
                name: 'Home'
            }
        };
    this[NavigationMixin.Navigate](pageReg);
    }
        
}