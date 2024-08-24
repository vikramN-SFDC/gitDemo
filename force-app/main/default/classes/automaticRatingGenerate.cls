public class automaticRatingGenerate {
    public static void ratingCheckClass(list <account>accList){
        for(account acc: accList){
            if(acc.industry=='agriculture'){
                acc.rating='cold';
            }
            
            else{
                acc.rating='hot';
                insert accList;
            }
        }
    }
   
    
}