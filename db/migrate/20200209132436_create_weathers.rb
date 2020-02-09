class CreateWeathers < ActiveRecord::Migration[6.0]
  def change
    create_table :weathers do |t|
      t.string :type
      t.float :wind_speed
      t.float :temperature
      t.datetime :time

      t.timestamps
    end
  end
end
