# frozen_string_literal: true

class WeatherPlanController < ApplicationController
  def index
    OpenWeather::Forecast.find_by_location('London,us')
    @weather = Weather.all
    @response = {
      weather: @weather,
      mode_of_transportation: Deciders::TransportationDecider.new(@weather).decide
    }
    @weather.order('id desc').offset(6).destroy_all
  end
end
