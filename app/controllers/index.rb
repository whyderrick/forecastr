require_relative '../models/forecast'

get '/' do
  haml :'/index'
end

post '/' do
  session[:current_city] = params[:city]
  forecast = Forecast.new(params[:city])

  @results = forecast.get_daily_forecast

  if request.xhr?
    haml :'forecasts/index', layout: false
  end
end
