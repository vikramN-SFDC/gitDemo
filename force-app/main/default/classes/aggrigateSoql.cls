public class aggrigateSoql {
    public static void agggrigateMethod(){
        
      list <AggregateResult> agrList=[select industry,
                                      count(id)countt,
                                      min(AnnualRevenue)minn,
                                      AVG(AnnualRevenue)avgg,
                                      max(AnnualRevenue)maxx
                                      from account  GROUP BY industry];
        system.debug(agrList);
        
        integer countType=(integer)agrList[0].get('countt');
        system.debug(countType);
        decimal minValue=(decimal)agrList[0].get('minn');
         system.debug(minValue);
        decimal avgValue=(decimal)agrList[0].get('avgg');
         system.debug(avgValue);
        decimal maxValue=(decimal)agrList[0].get('maxx');
         system.debug(maxValue);

        
    }

}