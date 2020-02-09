# frozen_string_literal: true

module Deciders
  class TransportationDecider < Base
    def initialize(weather)
      @weather = weather
    end

    def decide
      return 'Subway' if temperature_too_low?(@weather) || storming?(@weather)

      'Bike'
    end
  end
end
