import { LightningElement } from 'lwc';

export default class ToDoList extends LightningElement {
taskName="";
taskDate=null;
incompleteTask=[];
completeTask=[];
    changeHandler(event){
        let{name,value}=event.target;
        if(name===taskName){
            this.taskName=value;
        }
        else if(name===taskDate){
            this.taskDate=value;
        }
    }
    
    resetHandler(){
        taskName="";
         taskDate=null;

    }
    addTaskHandler(){
        // if end date is missing populate today's date as end date
        if(!this.taskDate){
            this.taskDate=new Date().toISOString().slice(0,10);
        }
         if(this.validateTask){
            this.incompleteTask=[...this.incompleteTask,
            {
                taskName: this.taskName,
                taskDate: this.taskDate
            }];
            this.resetHandler();
            let sortedArray=this.sortTask(this.incompleteTask);
            this.incompleteTask=[...sortedArray]
         }
    }
    validateTask(){
        let isValid=true;
        let element=this.template.querySelector(".taskName")
        //condition 1---check task name is empty
        //condition 2 --if task is not empty then check fod duplicate

        if(!this.taskname){  
            //check task name is empty
            isValid=true;
        }else{
          let taskItem =  this.incompleteTask.find((currItem) => 
            currItem.taskName===this.taskName &&
            currItem.taskDate===this.taskDate                                

        )};
        if(taskItem){
            isValid=false;
            Element.setCustomValidity("task is already available")
        }
         
        
        if(isValid){
            Element.setCustomValidity("");
        }
        element.reportValidity();
        return isValid;
    }
    sortTask(inputArr){
       let sortedArray= inputArr.sort((a,b)=>{
            const dateA= new Date(a.taskDate);
            const dateB=new Date(b.taskDate);
            return dateA- dateB;
        });
        return sortedArray;
    }
}