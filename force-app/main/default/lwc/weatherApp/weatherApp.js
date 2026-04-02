import { LightningElement ,track} from 'lwc';
import getWeatherDetails from '@salesforce/apex/WeatherAPI.getWeatherDetails';

export default class WeatherApp extends LightningElement {
    @track city ='';
    @track weatherData;
    @track error;
    

    handleCityChange(event) {
        this.city = event.target.value;
    }

    fetchWeather() {
        this.weatherData = null; 
        getWeatherDetails({ city: this.city })
            .then(result => {
                console.log('RESULT:', result); 

                this.weatherData = result; 

            })
            .catch(error => {
                console.error('ERROR:', error);
        });
}
}