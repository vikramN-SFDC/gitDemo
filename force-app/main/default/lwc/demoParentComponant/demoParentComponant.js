import { LightningElement,track } from 'lwc';

export default class DemoParentComponant extends LightningElement {
   inputString;
   handleChange(event){
      this.inputString = event.target.value;
   }
  
  handleName(event){
      this.listOfStudents=event.target.value;

   }
  @track listOfStudents=[
      {
         name:'vinay',
         age:29,
         qualification:'B.tech',
         city:'Hyderabad',
        
      },
      {
         name:'raj',
         age:28,
         qualification:'B.tech',
         city:'pune',
      },
      {
         name:'mahesh',
         age:29,
         qualification:'B.tech',
         city:'satara',
      }
   ]
}