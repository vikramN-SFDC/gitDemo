public with sharing class CurrencyConverterp{

   // Inner classes to represent JSON structure
        public class Data {
         @AuraEnabled public String code;
         @AuraEnabled public String name;
         @AuraEnabled public Double rate;
         @AuraEnabled public String calculatedstr;
         @AuraEnabled public Double calculated;
        }
        
        public class Result {
            @AuraEnabled public String base;
            @AuraEnabled public String lastupdate;
            @AuraEnabled public List<Data> data;
        }
        
        // Method to fetch data from API
        @AuraEnabled(cacheable=true)
         public static Result fetchCurrencyData() {
            String endpoint = 'https://api.collectapi.com/economy/currencyToAll?int=10&base=USD';
            
            // Set HTTP Request headers
            HttpRequest req = new HttpRequest();
            req.setEndpoint(endpoint);
            req.setMethod('GET');
            req.setHeader('Authorization','6FvKMEj0BoM8CJn1BKsPQb:6eYHzm7rIXEGM9wyAgyupC');
            
            // Send HTTP Request
            Http http = new Http();
            HttpResponse res = http.send(req);
            
            // Parse JSON response
            Result result;
            if (res.getStatusCode() == 200) {
                result = (Result) JSON.deserialize(res.getBody(), Result.class);
            } else {
                result = new Result();
            }
            
            return result;
        }
    }
    
