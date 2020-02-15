# frozen_string_literal: true

module OpenWeather
  class Connection
    BASE = 'http://api.openweathermap.org/data/2.5/forecast?id='
    API_HEADER = '&appid='

    def initialize(location)
      @query = BASE + location + API_HEADER + ENV['OPEN_WEATHER_API']
    end

    def api
      Faraday.get @query
    end
  end
end
