# Forecastr


Forcastr queries the Yahoo API for weather data and displays forecast for today and the next 10 days. For each day in the forecast it displays the date, high temp, low temp and text description of the conditions.
It  allows the user to select from a list of cities, and persists that choice across sessions. It's a single-page app, built using Google's Materialize Framework and it works responsively.

## Future Improvements
- Serverless build that translates the classes in the in the models folder to JavaScript objects and constructors.
- A dynamic view that animates an active forecast from a carousel.
  - Enlarge the selected day from the list
  - View the other days in a single carousel
- Photos on the cards or icons in the bottom section of each that correspond to the day's `text` property.

## Testing Strategy at Larger Scale
The current version of Forecastr has no tests :slightly_frowning_face:.
In a future version of the app, there would be tests against the Yahoo API payload (ensuring there are no API changes), against the models themselves (to allow for refactoring), and against the interactions happening in the client side.
I'm most familiar with Jasmine for JavaScript testing, and do a bit more research on the best way to manage the DOM manipulation tests. 

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
