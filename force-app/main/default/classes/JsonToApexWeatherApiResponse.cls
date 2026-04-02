public class JsonToApexWeatherApiResponse {
   public class Condition {
		public String text;
		public String icon;
		public Integer code;
	}

	public Location location;
	public Current current;

	public class Current {
		public Integer last_updated_epoch;
		public String last_updated;
		public Double temp_c;
		public Double temp_f;
		public Integer is_day;
		public Condition condition;
		public Double wind_mph;
		public Double wind_kph;
		public Integer wind_degree;
		public String wind_dir;
		public Double pressure_mb;
		public Double pressure_in;
		public Double precip_mm;
		public Double precip_in;
		public Integer humidity;
		public Integer cloud;
		public Double feelslike_c;
		public Double feelslike_f;
		public Double windchill_c;
		public Double windchill_f;
		public Double heatindex_c;
		public Double heatindex_f;
		public Double dewpoint_c;
		public Double dewpoint_f;
		public Double vis_km;
		public Double vis_miles;
		public Double uv;
		public Double gust_mph;
		public Double gust_kph;
	}

	public class Location {
		public String name;
		public String region;
		public String country;
		public Double lat;
		public Double lon;
		public String tz_id;
		public Integer localtime_epoch;
		public String localtime;
	}

	
	public static JsonToApexWeatherApiResponse parse(String json) {
		return (JsonToApexWeatherApiResponse) System.JSON.deserialize(json, JsonToApexWeatherApiResponse.class);
	} 
}