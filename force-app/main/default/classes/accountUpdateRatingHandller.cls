public class accountUpdateRatingHandller {
    public static void updateRatingClass(list <account> accList){
        
        for (account acc:accList){
            
            if(acc.industry== 'Banking'||acc.industry=='HealthCare')
                
            {
                acc.Rating='Hot';
            }
        }
        
    }
}