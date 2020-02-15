# frozen_string_literal: true

module Converters
  class Temperature
    def initialize(kelvin)
      @kelvin = kelvin
    end

    def celcius
      (@kelvin - 273.15).round
    end

    def farenheit
      (celcius * 9 / 5 + 32).round
    end
  end
end
