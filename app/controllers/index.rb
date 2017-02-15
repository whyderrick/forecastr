require_relative '../models/api_consumer'

get '/' do
  haml :'/index'
end

post '/' do
  # session[:current_city] = params[:city]
  consumer = API_Consumer.new
  @data_return = API_Consumer.parse_forecast(params[:city])
  @data_return.to_json
end
