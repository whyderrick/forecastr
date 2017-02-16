# Weather Viewer

## Goals
Query the Yahoo API for weather data and display forecast for the next 10 days. This app aims to do the following 6 things:

[] Allow a user to select from a list of U.S. cities (selection should be "sticky" meaning selection persists between browser sessions)
[x] Show the current weather for user-selected city using the Yahoo Weather API https://developer.yahoo.com/weather/
[x] Should also show weather for the next 10 days
[x] For each day (current and next 10 days) display the following:
  - The date (e.g. "Monday, November 21st, 2016")
  - High temp
  - Low temp
  - Description (e.g. "Partly Cloudy")
[x]. Make app responsive/adaptive:  on a mobile phone, weather for next 10 days (boxes/tiles) should be stacked in portrait orientation (365px X 667px) and horizontal layout in landscape orientation

## Testing Strategy at Larger Scale

## Time spent
### Environment Setup
**Total: 103 minutes**
#### Wednesday Night
- 9:30 - 9:45: Cloning Sinatra skeleton files
- 9:45 - 9:55: README and GitHub setup
#### Thursday
- 10:45 - 11:45: SASS and Materialize (trying to build an asset pipeline)
- 12:40 - 1:03: Deployment (and GH Pages research)

### Development
**Total: 9h 20m**
#### Wednesday Night
- 9:20 - 9:30: Looking at the Yahoo API responses
- 10:00 - 12:30: Parser and Homepage setup
#### Thursday
- 2:10 - 3:45: Implementing classes
- 3:45 - 5: Debugging AR and Sinatra
- 8:45 - 9:40: Displaying the data in a desirable format
- 9:45 - 12:15: Styling
- 12:15 - 12:40: Sticky feature

## Stack
- Sinatra Ruby Framework
- Yahoo API
- Materialize CSS Framework
- Homespun CSS
- jQuery
