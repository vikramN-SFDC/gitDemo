import { LightningElement, wire, track } from 'lwc';
import fetchCurrencyData from '@salesforce/apex/CurrencyConverterp.fetchCurrencyData';

export default class CurrencyConverter extends LightningElement {
    @track currencyData;

    @wire(fetchCurrencyData)
    wiredCurrencyData({error, data}) {
        if (data) {
            this.currencyData = data;
        } else if (error) {
            console.error('Error fetching data: ', error);
        }
    }
}
