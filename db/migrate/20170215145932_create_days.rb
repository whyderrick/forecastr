class CreateDays < ActiveRecord::Migration
  def change
    create_table :days do |t|
      t.string :day_of_week
      t.datetime :date
      t.string :text
      t.integer :high
      t.integer :low

      t.timestamps
    end
  end
end
