class Forecast
  attr_reader :query
  attr_accessor :days
  # Needs ActiveRecord now that it has a relationship to Day

  def initialize(query)
    @query = query
    @days = []
  end

  def get_daily_forecast
    forecast = parse_forecast
    forecast[:result][:forecast].each do |day|
      p Day.new(day)
      @days << Day.new(day)
    end

  end

  private
    def query_weather_api
      url = "https://query.yahooapis.com/v1/public/yql?q=select%20*%20from%20weather.forecast%20where%20woeid%20in%20(select%20woeid%20from%20geo.places(1)%20where%20text%3D%22#{@query}%2C%20ak%22)&format=json&env=store%3A%2F%2Fdatatables.org%2Falltableswithkeys"
      HTTParty.get(url)
    end

    def parse_forecast
      weather_api_response = query_weather_api
      ten_day_fc = weather_api_response["query"]["results"]["channel"]["item"]["forecast"]
      parsed_result = {
        result: {
          location: @query.titlecase,
          forecast: ten_day_fc
        }
      }
    end
end
