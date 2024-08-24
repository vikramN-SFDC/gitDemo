import { LightningElement } from 'lwc';

export default class InterestCalculation extends LightningElement {

    priciple;
    years;
    interest;
    loan;


    principleAmountHandller(event)
    {
        this.priciple=parseInt(event.target.value);
    }
    numberOfYearsHandller(event)
    {
        this.years=parseInt(event.target.value);
    }
    interestRateHandller(event)
    {
        this.interest=parseInt(event.target.value);
    }
    calculateInterestHandller()
    {
        this.loan='Amount of interest is =' +( this.priciple * this.years * this.interest / 100);
    }
}