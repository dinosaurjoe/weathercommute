# frozen_string_literal: true

module Deciders
  class Transportation < Base
    def decide
      return 'Subway' if temperature_too_low?(@weather) || storming?(@weather)

      'Bike'
    end
  end
end
