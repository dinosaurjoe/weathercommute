# frozen_string_literal: true

module OpenWeather
  class Forecast < Base
    def self.find_by_location(location)
      response = OpenWeather::Request.get(location)
      todays_forecast = response['list'].first(6)
      Forecast.new(todays_forecast)
    end

    def initialize(todays_forecast)
      super(todays_forecast)
      parse_weather(todays_forecast)
    end

    def parse_weather(todays_forecast)
      todays_forecast.each do |time|
        Weather.create(
          weather_type: time['weather'].first['description'],
          wind_speed: time['wind']['speed'],
          temperature: time['main']['temp'],
          time: time['dt_txt'].to_datetime,
          type_code: type_code(time['weather'].first['id'])
        )
      end
    end

    def type_code(original_code)
      original_code.to_s.split('').first.to_i * 100
    end
  end
end
