import { LightningElement } from 'lwc';

export default class JavaToHtmlComponent extends LightningElement {

    fullname= 'vikram nimbalkar';

    handleClick(event){
        this.fullname='vicky';
    }
}