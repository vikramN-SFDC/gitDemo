public class preventRecordDeletion {
    public static void addErrorForRecord(list <account> accList){
        profile p=[SELECT id FROM profile WHERE name='system administrator'];
        for(account acc : accList){
            if(UserInfo.getProfileId()!=p.Id || acc.Active__c == 'Yes'){
                acc.addError('Active user cannot be deleted');
                
            }
        }
        
        
    }
    
}