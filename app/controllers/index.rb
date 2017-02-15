require_relative '../models/api_consumer'

get '/' do
  haml :'/index'
end

post '/' do
  consumer = API_Consumer.new
  data_return = API_Consumer.get_forecast(params[:city])

  @forecast = data_return["query"]["results"]["channel"]["item"]["forecast"]
end
