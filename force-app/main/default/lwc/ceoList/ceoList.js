import Name from '@salesforce/schema/Account.Name';
import { LightningElement } from 'lwc';

export default class CeoList extends LightningElement {

    CEOlist;
    showListHandller(){
      this.CEOlist = [ 
        {
        id:1,
        name:'vikram nimbalkar',
        title: 'CEO of clickinfo',
      },
      {
        id:2,
        name:'akash nimbalkar',
        title: 'CEO of MySpace',
      },
      {
        id:3,
        name:'mayur nimbalkar',
        title: 'CEO of Jogeshwari',
      },


        ]
    }
}