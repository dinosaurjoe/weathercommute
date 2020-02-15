# frozen_string_literal: true

module Deciders
  class Clothing < Base
    def initialize(low)
      @low = low
    end

    def decide
      if @low <= 12
        'Coat'
      elsif @low > 12 && @low <= 20
        'Jacket'
      elsif @low > 20 && @low <= 24
        'Pull-over'
      else
        'Shirt'
      end
    end
  end
end
