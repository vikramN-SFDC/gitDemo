public class StudentStatus{
 
 public static void CheckQualification(list<student__c>VarstudentslistNew){
    for (student__c VarP:VarstudentslistNew)
    {
    if(VarP.age__c>=30 && VarP.Experience__c>=8){
      VarP.status__c= 'Selected';
       }
       
       
    }
    }
}