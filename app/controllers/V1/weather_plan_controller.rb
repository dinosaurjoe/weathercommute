# frozen_string_literal: true

module V1
  class WeatherPlanController < ApplicationController
    def index
      OpenWeather::Forecast.find_by_location('London,us')
      @weather = Weather.all
      response = {
        mode_of_transportation: Deciders::TransportationDecider.new(@weather).decide
      }
      @weather.destroy_all
      render json: response.to_json
    end
  end
end
