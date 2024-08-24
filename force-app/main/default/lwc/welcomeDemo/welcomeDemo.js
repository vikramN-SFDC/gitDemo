import { LightningElement,track} from 'lwc';

export default class WelcomeDemo extends LightningElement {
    greeting="hello";
    @track welcome="tech journey";
    handleClick(event){
        this.greeting='hi';
        this.welcome='change is necessary';
    }
}