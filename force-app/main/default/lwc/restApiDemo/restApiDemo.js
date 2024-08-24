import { LightningElement,track } from 'lwc';

import testApiMethod from '@salesforce/apex/RESTaPIClass.testApiMethod';

export default class RestApiDemo extends LightningElement {
    data = [];
    

   @track searchAcc;
   handleSearch(){
        testApiMethod()
        .then(result => {
            this.searchAcc = result;
            this.data = result.records.map(record => ({
                FirstName: record.FirstName,
                LastName: record.LastName,
                url: record.attributes.url,
                Phone: record.Phone
            }));
            console.log('searchData::'+JSON.stringify(result));
          
        })
        .catch(error => {
           console.log(error);
        });
    }

    columns = [
        { label: 'First Name', fieldName: 'FirstName' },
        {label: 'Last Name', fieldName: 'LastName'},
        { label: 'Website', fieldName: 'url', type: 'url' },
        { label: 'Phone', fieldName: 'Phone', type: 'Phone' },
       
    ];

   
    
    
}