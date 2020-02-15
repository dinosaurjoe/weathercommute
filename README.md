Weather app that makes commuting decision for you. Currently it is set up only for Hamburg, DE with my personal preferences as well as only two modes of transportation (bike / public transportation). It makes use of OpenWeather's five day forecast API which you can find here: https://openweathermap.org/forecast5

In order to set up locally:

First, clone this repository.

`git clone git@github.com:dinosaurjoe/weathercommute.git`

Then, after entering that directory, create and set up a postgres database using:

`rails db:create`
`rails db:migrate`

Then, after creating an account with OpenWeather and receiving an API key, create an .env file in the project's main folder, setting a constant with your key like so:
`OPEN_WEATHER_API: YOUR_API_KEY`

Then run a rails server

`rails s`

Feel free to reach out if you have any questions :)
