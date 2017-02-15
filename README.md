# Weather Viewer

## Goals
Query the Yahoo API for weather data and display forecast for the next 10 days. This app aims to do the following 6 things:
1. Allow a user to select from a list of U.S. cities (selection should be "sticky" meaning selection persists between browser sessions)
2. Show the current weather for user-selected city using the Yahoo Weather API https://developer.yahoo.com/weather/
3. Should also show weather for the next 10 days
4. For each day (current and next 10 days) display the following:
  - The date (e.g. "Monday, November 21st, 2016")
  - High temp
  - Low temp
  - Description (e.g. "Partly Cloudy")
5. Make app responsive/adaptive:  on a mobile phone, weather for next 10 days (boxes/tiles) should be stacked in portrait orientation (365px X 667px) and horizontal layout in landscape orientation

## Testing Strategy at Larger Scale

## Time spent
### Environment Setup
- 9:30 - 9:45: Cloning Sinatra skeleton files

### Development
- 920 - 930: Looking at the Yahoo API responses

## Stack
- Sinatra
- Postgres
- Yahoo API
- Materialize CSS Framework
- Homespun CSS
- jQuery
