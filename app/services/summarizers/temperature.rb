# frozen_string_literal: true

module Summarizers
  class Temperature
    def initialize(weather)
      @weather = weather
    end

    def summary
      { temperature_now: Converters::Temperature.new(@weather.first.temperature).celcius,
        average_temperature: Converters::Temperature.new(average_temperature).celcius,
        low: Converters::Temperature.new(low).celcius,
        high: Converters::Temperature.new(high).celcius }
    end

    private

    def daily_temperatures
      @daily_temperatures ||= @weather.pluck(:temperature)
    end

    def average_temperature
      daily_temperatures.instance_eval { reduce(:+) / size.to_f }
    end

    def low
      daily_temperatures.min
    end

    def high
      daily_temperatures.max
    end
  end
end
