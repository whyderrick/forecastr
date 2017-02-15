class API_Consumer
  # Since this app never hits the database, there's no need to inherit
  # from ActiveRecord::Base

  # Need a method to make a call to Yahoo
  def self.get_forecast(query)
    url = "https://query.yahooapis.com/v1/public/yql?q=select%20*%20from%20weather.forecast%20where%20woeid%20in%20(select%20woeid%20from%20geo.places(1)%20where%20text%3D%22#{query}%2C%20ak%22)&format=json&env=store%3A%2F%2Fdatatables.org%2Falltableswithkeys"
    HTTParty.get(url)
  end
  # Need a method to parse that response into useful things to pass to the client
  def self.parse_forecast
  end

  private

end
