@isTest
public class OpportunityTriggerTest {
@isTest
    public static void UpdateDesktest(){
        list <Opportunity> oppList = New list <Opportunity>();
        for (integer i=1 ; i<= 5; i++){
            Opportunity opp = new Opportunity();
            opp.Name= 'Test'  + i;
            opp.CloseDate = system.today();
            opp.StageName= 'Prospecting';
           opp.Amount=20000 ;
           oppList.add(opp);
        } 
        test.startTest();
        insert oppList;
        test.stopTest();
        list<Opportunity> UpdatedOppList =[SELECT id, description FROM  Opportunity WHERE id=: oppList[0].id ];
          system.assertEquals('Hot Opportunity', UpdatedOppList[0].description);
   } 
}