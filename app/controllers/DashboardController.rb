# frozen_string_literal: true

class DashboardController < ApplicationController
  HAMBURG_ID = '2911298'

  def index
    OpenWeather::Forecast.find_by_location(HAMBURG_ID)
    @weather = Weather.all
    @temperature_summary = Summarizers::Temperature.new(@weather).summary
    @response = {
      weather: @weather,
      mode_of_transportation: Deciders::Transportation.new(@weather).decide,
      temperature_summary: @temperature_summary,
      news: NewsApi::NewsToday.find_by_query('')[0,5],
      choice_of_clothing: Deciders::Clothing.new(@temperature_summary[:low]).decide
    }
    @weather.order('id desc').offset(5).destroy_all
  end

  private

  def params; end
end
