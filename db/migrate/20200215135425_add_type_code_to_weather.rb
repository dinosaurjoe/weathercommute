# frozen_string_literal: true

class AddTypeCodeToWeather < ActiveRecord::Migration[6.0]
  def change
    add_column :weathers, :type_code, :integer
  end
end
