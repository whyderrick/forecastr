class CreateForecasts < ActiveRecord::Migration
  def change
    create_table :forecasts do |t|
      t.string :query
      t.string :location

      t.timestamps
    end
  end
end
