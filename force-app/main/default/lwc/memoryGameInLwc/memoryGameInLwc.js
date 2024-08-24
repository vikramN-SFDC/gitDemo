import { LightningElement } from 'lwc';
import{loadStyle} from 'lightning/PlatformResourceLoader';
import fontawesome from '@salesforce/resourceUrl/fontawesome'
export default class MemoryGameInLwc extends LightningElement {

    isLibLoaded =false
    renderedCallback(){
        if(this.isLibLoad){
            return
        } else{
            loadStyle (this,fontawesome+'/fontawesome/css/fontawesome.min.css').then(()=>{
                console.log("loaded successfully")
            }).catch(error=>{
                console.error(error)
            })
            this.isLibLoaded=true
        }
     
    }
}