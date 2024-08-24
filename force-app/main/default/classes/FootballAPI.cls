public with sharing class FootballAPI {
    
    // Wrapper class for Result
    public class Result {
        @AuraEnabled public String league;
        @AuraEnabled public String key;
    }
    
    // Wrapper class for JSON2Apex
    public class JSON2Apex {
        @AuraEnabled public Boolean success;
        @AuraEnabled public List<Result> result;
    }
    
    // Method to fetch data from API
    @AuraEnabled(cacheable=true)
    public static JSON2Apex fetchLeagues(String apiKey) {
        HttpRequest req = new HttpRequest();
        req.setEndpoint('https://api.collectapi.com/football/leaguesList');
        req.setMethod('GET');
        req.setHeader('Authorization', 'apikey ' + apiKey);
        
        Http http = new Http();
        HttpResponse res = http.send(req);
        
        if (res.getStatusCode() == 200) {
            return (JSON2Apex) JSON.deserialize(res.getBody(), JSON2Apex.class);
        } else {
            return null;
        }
    }
}
