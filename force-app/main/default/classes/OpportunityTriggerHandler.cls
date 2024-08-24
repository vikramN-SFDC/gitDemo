public class OpportunityTriggerHandler {
    public static void UpdateDescription (list<Opportunity> OppList){
        for(Opportunity opp : OppList) {
            if(opp.Amount !=null && opp.Amount>=10000 && opp.Amount<=50000 ){
                opp.Description ='Hot Opportunity';
            }
        }
    }
    
    public static void populatHighestOpportunityAmount( list<opportunity> oppoList){

             set<id> accountIdSet = new set<id>();
        list <account> accountUpdatedList=new list<account>();
        for(opportunity opp:oppoList ){
            accountIdSet.add(opp.AccountId);
        }
        list<account> accList=[SELECT id,Highest_Opportunity_amount__c,(SELECT id,AccountId,amount FROM Opportunities) 
                               FROM account WHERE Id IN:accountIdSet] ;
        list<opportunity>oppLists=new list<opportunity>();
        decimal sum=0;
        for(account acc:accList){
            for(opportunity opp:acc.Opportunities){
                if(opp.Amount>sum){
                    sum=opp.amount;
                }
                oppLists.add(opp);  
                
            }
            acc.Highest_Opportunity_amount__c= sum;
            accountUpdatedList.add(acc);
        }
        update accountUpdatedList;      
        
       
    }
    
    
    public static void populateNumberOfOpportunity( list<opportunity> oppoList){
        
              set<id> accountIdSet = new set<id>();
        list <account> accountUpdatedList=new list<account>();
        for(opportunity opp:oppoList ){
            accountIdSet.add(opp.AccountId);
        }
        list<account> accList=[SELECT id,number_of_opportunities__c,(SELECT id,AccountId FROM Opportunities) 
                               FROM account WHERE Id IN:accountIdSet] ;
        list<opportunity>oppLists=new list<opportunity>();
        for(account acc:accList){
            for(opportunity opp:acc.Opportunities){
                oppLists.add(opp);
            }
            acc.number_of_opportunities__c=oppLists.size();
            accountUpdatedList.add(acc);
        }
        update accountUpdatedList;
         }
       
    
    
    
    
    public static void populatHighestOpportunityAmountID( list<opportunity> oppoList){
        
            set<id> accountIdSet = new set<id>();
        list <account> accountUpdatedList=new list<account>();
        for(opportunity opp:oppoList ){
            accountIdSet.add(opp.AccountId);
        }
        list<account> accList=[SELECT id,Highest_Opportunity_amount__c,(SELECT id,AccountId,amount,name FROM Opportunities) 
                               FROM account WHERE Id IN:accountIdSet] ;
       
        opportunity opt;
        decimal HighestAmmount=0;
        for(account acc:accList){
            for(opportunity opp:acc.Opportunities){
                if(opp.Amount>HighestAmmount){
                    HighestAmmount=opp.amount;
                    opt=opp;
                }      
            }
            Account acct = [SELECT id,Highest_Opportunity_amount__c,description from account where id=:opt.AccountId];
            acct.description=opt.Name;
            update acct;
        
        }   
        
        
    }
     
    
    public static void updateOpportunityStatus (list<opportunity> oppList){
       
             set<id>accountIdSet=new  set<id>();
        for(opportunity opp:oppList){
            accountIdSet.add(opp.accountId);
        }
        List<Account> accList1 = new List<Account>();
        list<account>accList=[SELECT id,opportunity_Status__c,
                              (SELECT id,accountId,stageName FROM opportunities WHERE stageName!='closed won') 
                              FROM account WHERE id IN:accountIdSet];
        map<id,account>oppMap=new map<id,account>();
        for(account acc:accList){
            oppMap.put(acc.id,acc);
        }
        for(account acc:accList){
            if(oppMap.get(acc.id).opportunities.size()>0){
                acc.opportunity_Status__c='open';
            }else{
                acc.opportunity_Status__c='closed';
            }
            accList1.add(acc);
        }
        update accList1;
        }
          }