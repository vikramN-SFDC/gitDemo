import { LightningElement,api } from 'lwc';

export default class SetterDemoChild extends LightningElement {

    userDetail
    @api 
    get detail(){
        return this.userDetail

    }
    set detail(data){
        let newAge=data.age + 5
        this.userDetail={...data, age:newAge ,"location":"pune" }

    }
}