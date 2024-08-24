public class ParkerPenClass {
    public static void CheckDublication(list <parker_pen__c> ListOfNewRecords, map <id, parker_pen__c> MapOfOldRecord){
        for(parker_pen__c VarNewRecord : ListOfNewRecords)
        {
               parker_pen__c VarOldRecord = MapOfOldRecord.get(VarNewRecord.id);

            if(VarNewRecord.Client_email__c !=VarOldRecord.Client_email__c)
            {
                
                VarNewRecord.Client_email__c.addError('Invalid Action!! You can not change Email ID');
            }
            
            
        }
        
    }


}