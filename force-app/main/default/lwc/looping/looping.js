import { LightningElement } from 'lwc';

export default class Looping extends LightningElement {
    carList=["audi","Maruti","TATA","Hundai"];

    ceoList=[
        {            
            id:1,
            company:"Tata",
            ceo:"Ratan tata",
        },

        {
            id:2,
            company:"pepsi",
            ceo:"Indira nuri",
        },
        {
            id:3,
            company:"Google",
            ceo:"Sundar pichai",
        },

        {
            id:4,
            company:"reliance",
            ceo:" anil Ambani",
        },
    ]
}