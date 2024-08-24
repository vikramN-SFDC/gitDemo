import { LightningElement ,track} from 'lwc';
import PubsubComponentA from '../pubsubComponentA/pubsubComponentA';

export default class DemoLwc extends LightningElement {
    names
    //track handler
   @track address={
        city:Pune,
        pincode:'441102',
        country: india
    }
    trackHandler(event){
        this.address={...this.address,'city':event.trget.value}
    }

    //get method
    name=['a','b','c']
    num1=12
    num2=20
    
    get firstUser(){
     return this.name[0].toUpperCase()
    }

    get multiply(){
        return this.num1*this.num2
    }

    //conditional rendering
    isVisible= false
    handleClick(){
        this.isVisible=true
    }
    chngeshandler(event){
        this.names=event.target.value
    }
    get helloMethod(){
        this.names==='hello'
    }
}