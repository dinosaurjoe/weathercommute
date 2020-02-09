class ChangeTypeToWeatherType < ActiveRecord::Migration[6.0]
  def change
    rename_column :weathers, :type, :weather_type
  end
end
