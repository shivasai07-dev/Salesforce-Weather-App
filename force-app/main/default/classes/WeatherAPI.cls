public with sharing class WeatherAPI {
    
    @AuraEnabled
    public static Map<String, Object> getWeatherDetails(String city){
        
        Http http = new Http();
        HttpRequest req = new HttpRequest();
        req.setMethod('GET');
        req.setEndpoint('callout:Weather_Api/current.json?q=' + city);

        HttpResponse res = http.send(req);

        if(res.getStatusCode() == 200){

            JsonToApexWeatherApiResponse data =
                JsonToApexWeatherApiResponse.parse(res.getBody());

            // create record in Weather__c object
            Weather__c weather = new Weather__c();
            
            weather.City__c = data.location.name;
            weather.Country__c = data.location.country;
            weather.Temperature__c = data.current.temp_c;
            weather.Cloud__c = data.current.cloud;
            weather.Humidity__c = data.current.humidity;
            weather.Wind_Speed__c = data.current.wind_kph;
            weather.Condition__c = data.current.condition.text;
            weather.Last_Updated__c = System.now();

            insert weather;
            
            Map<String, Object> result = new Map<String, Object>();

            result.put('city', data.location.name);
            result.put('country', data.location.country);
            result.put('icon', 'https:' + data.current.condition.icon);
            result.put('temp', data.current.temp_c);
            result.put('cloud', data.current.cloud);
            result.put('humidity', data.current.humidity);
            result.put('wind', data.current.wind_kph);
            result.put('condition', data.current.condition.text);
            result.put('icon', data.current.condition.icon);


            return result;
        } else {
            throw new AuraHandledException('Error fetching weather data');
        }
    }
}