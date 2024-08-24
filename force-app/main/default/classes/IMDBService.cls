global with sharing class IMDBService {
    
    // Replace this with your actual API key
 
    private static final String API_KEY = '6FvKMEj0BoM8CJn1BKsPQb:6eYHzm7rIXEGM9wyAgyupC';
    
    // Wrapper class to represent the structure of the JSON response
    public class IMDBResponse {
        @AuraEnabled public Boolean success;
        @AuraEnabled public List<IMDBResult> result;
    }
    
    // Inner wrapper class for individual movie details
    public class IMDBResult {
        @AuraEnabled public String Title;
        @AuraEnabled public String Year;
        @AuraEnabled public String imdbID;
        @AuraEnabled public String Type;
        @AuraEnabled public String Poster;
    }
    
    // Method to fetch movie data by name
    @AuraEnabled(cacheable=true)
    public static IMDBResponse searchMovies(String movieName) {
       
        String endpoint = 'https://api.collectapi.com/imdb/imdbSearchByName?query=' + EncodingUtil.urlEncode(movieName, 'UTF-8');
        
        HttpRequest request = new HttpRequest();
        request.setEndpoint(endpoint);
        request.setMethod('GET');
        request.setHeader('Authorization', 'apikey ' + API_KEY);
        
        Http http = new Http();
        HttpResponse response = http.send(request);
        IMDBResponse responseWrapper = new IMDBResponse();
            
        if (response.getStatusCode() == 200) {
            responseWrapper = (IMDBResponse) JSON.deserialize(response.getBody(), IMDBResponse.class);
            responseWrapper.success = true;
        } else {
            // Handle error scenarios here
            responseWrapper.success = false;
            responseWrapper.result = new List<IMDBResult>();
        }
        
        return responseWrapper;
    }
}
