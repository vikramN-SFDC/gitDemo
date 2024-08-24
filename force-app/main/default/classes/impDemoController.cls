public  class impDemoController {
     @auraEnabled
    public static List<opportunity> opportunityList(String str){
        String strr ='%'+ str + '%';
    return[SELECT id,Name,CloseDate,StageName FROM Opportunity WHERE Name Like:strr LIMIT 10];
   }
}