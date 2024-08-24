import { LightningElement } from 'lwc';

export default class AccountChild1 extends LightningElement {
    searchTextChild1
    changeHandler(event){
        this.searchTextChild1=event.target.value

    }

    getAccounts(event){

        const myEvent= new CustomEvent('getsearcheevent',{
            detail:this.searchTextChild1
        })

        this.dispatchEvent(myEvent);

    }
}