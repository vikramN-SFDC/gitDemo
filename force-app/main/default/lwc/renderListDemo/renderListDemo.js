import { LightningElement } from 'lwc';

export default class RenderListDemo extends LightningElement {
    languages=["java","paython","apex"];

    contactList=[
        {
            id:1,
            firstname:'a',
            lastname:'x'

        },
       
        {
            id:3,
            firstname:'c',
            lastname:'z'

        },
    ]
}