import { LightningElement,api} from 'lwc';

export default class LwcAuraCommunication extends LightningElement {
    @api title

    callAura(){
     const event=new CustomEvent('sending',{
            detail:{
                "message":"this component calling from Aura"
            }
        })
        this.dispatchEvent(event)

    }
}