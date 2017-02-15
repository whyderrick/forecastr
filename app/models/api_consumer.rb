class API_Consumer
  # Since this app never hits the database, there's no need to inherit
  # from ActiveRecord::Base

  def self.parse_forecast(query)
    weather_api_response = self.query_weather_api(query)
    ten_day_fc = weather_api_response["query"]["results"]["channel"]["item"]["forecast"]
    {
      today: ten_day_fc[0],
      next_nine_days: ten_day_fc[1..-1]
    }
  end

  private
  def self.query_weather_api(query)
    url = "https://query.yahooapis.com/v1/public/yql?q=select%20*%20from%20weather.forecast%20where%20woeid%20in%20(select%20woeid%20from%20geo.places(1)%20where%20text%3D%22#{query}%2C%20ak%22)&format=json&env=store%3A%2F%2Fdatatables.org%2Falltableswithkeys"
    HTTParty.get(url)
  end
end
