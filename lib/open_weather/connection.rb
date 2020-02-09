# frozen_string_literal: true

module OpenWeather
  class Connection
  BASE = 'https://samples.openweathermap.org/data/2.5/forecast?q='
  API_HEADER = '&appid='

    def initialize(location)
      @query = BASE + location + API_HEADER + 'b6907d289e10d714a6e88b30761fae22'
    end

    def api
      Faraday.get @query
    end
  end
end
