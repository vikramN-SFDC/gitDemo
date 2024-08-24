import { LightningElement } from 'lwc';

export default class TimeCounter extends LightningElement {

    showStartButton =true;
    timeval='0 : 0 : 0 : 0 ';
     
    timeIntervalInstance;
    totalMilliSeconds =0;

    startHandller(event)
    { 
        this.showStartButton=false;
        var parentThis = this;

        this.timeIntervalInstance=setInterval(function()
        {
            var hours =Math.floor((parentThis.totalMilliSeconds %(1000*60*60*24))/(1000*60*60));
            var minutes=Math.floor((parentThis.totalMilliSeconds %(1000*60*60))/(1000*60));
            var seconds=Math.floor((parentThis.totalMilliSeconds  %(1000*60))/1000);
            var miliseconds=Math.floor((parentThis.totalMilliSeconds %(1000)));

            parentThis.timeval= hours+":"+minutes+":"+seconds+":"+miliseconds;

            parentThis.totalMilliSeconds +=100;

        },100);
    }
    stopHandller(event){
        this.showStartButton = true;
        clearInterval(this.timeIntervalInstance);
    }
    resetHandller(event){
        this.showStartButton=false;
        this.timeval='0 : 0 : 0 : 0';
        this.totalMilliSeconds=0;
        clearInterval(this.timeIntervalInstance);

       }
        }