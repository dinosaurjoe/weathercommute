class WeatherController < ApplicationController
  def index
    @weather = OpenWeather::Forecast.find_by_location('London,us')

    require 'pry'
    binding.pry
  end

  private
  def query
    params.fetch(:query, {})
  end
end