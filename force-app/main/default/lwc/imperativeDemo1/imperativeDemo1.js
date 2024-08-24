import { LightningElement } from 'lwc';
import accList from '@salesforce/apex/accountDemoClass.accList'
import accListwithSearch from'@salesforce/apex/accountDemoClass.accListwithSearch'
export default class ImperativeDemo1 extends LightningElement {
accounts
    handleClick(){
        accList().then(result=>{
            this.accounts=result;

        }).catch(error=>{
            console.log(error);

        })

    }

    accountss
    searchKey
    handleKeyChange(event){
        this.searchKey=event.target.value;
     
     accListwithSearch({searchKey:this.searchKey})
        .then(result=>{
            this.accountss=result;

        }).catch(error=>{
            console.log(error);
        })
    }
     }
    
