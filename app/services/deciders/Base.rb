# frozen_string_literal: true

module Deciders
  class Base
    TOO_COLD = 273.15
    STORMS = ['thunderstorm', 'rain', 'shower rain', 'snow'].freeze

    private

    def temperature_too_low?(weather)
      TOO_COLD > weather.pluck(:temperature).min
    end

    def storming?(weather)
      (weather.pluck(:weather_type).uniq & STORMS).empty?
    end
  end
end
