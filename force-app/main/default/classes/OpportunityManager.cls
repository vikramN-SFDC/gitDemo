@RestResource(urlMapping='/opportunities/*')
global with sharing class OpportunityManager {
   @HttpPost
   global static ID createOpportunity(string name,string stage,
                                      string closeDate,string source ,decimal amount){
     opportunity newOpportunity= new opportunity( name=name,
      stageName=stage,
      closeDate=Date.valueOf(closeDate),
     leadSource=source,
     Amount=amount
     );
     insert newOpportunity;
     return newOpportunity.id;

                                      }

   @HttpPut
 global static ID createOpportunity(string name,string stage,
       string closeDate,string source ,string id){
       opportunity newOpportunity= new opportunity( 
         name=name,
         stageName=stage,
         closeDate=Date.valueOf(closeDate),
         leadSource=source,
          Id=id
           );
           upsert newOpportunity;
           return newOpportunity.id;
                                                                      
                                      }
                                    }