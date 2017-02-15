class Forecast < ActiveRecord::Base
  # Needs ActiveRecord now that it has a relationship to the Day model

  has_many :days

  def self.parse_forecast(query)
    weather_api_response = self.query_weather_api(query)
    ten_day_fc = weather_api_response["query"]["results"]["channel"]["item"]["forecast"]
    parsed_result = {
      forecast: {
        location: query.titlecase,
        today: ten_day_fc[0],
        next_nine_days: ten_day_fc[1..-1]
      }
    }
  end

  private
    def self.query_weather_api(query)
      url = "https://query.yahooapis.com/v1/public/yql?q=select%20*%20from%20weather.forecast%20where%20woeid%20in%20(select%20woeid%20from%20geo.places(1)%20where%20text%3D%22#{query}%2C%20ak%22)&format=json&env=store%3A%2F%2Fdatatables.org%2Falltableswithkeys"
      HTTParty.get(url)
    end
end
