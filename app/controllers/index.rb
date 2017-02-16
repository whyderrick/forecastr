require_relative '../models/forecast'

get '/' do
  if session[:current_city]
    forecast = Forecast.new(session[:current_city])

    @results = forecast.get_daily_forecast
  end
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
