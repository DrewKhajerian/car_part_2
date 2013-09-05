class CreateSurveys < ActiveRecord::Migration
  def change
    create_table :surveys do |t|
      t.string :price_range
      t.string :type
      t.string :seats
      t.string :transmission
      t.string :drive_train
      t.string :fuel_type
      t.string :fuel_consumption
      t.string :towing
      t.string :ride_handling
      t.string :head_room
      t.string :leg_room
      t.string :shoulder_room
      t.string :trunk_space
      t.string :reliability
      t.string :bump_to_bump
      t.string :war_power
      t.string :war_rust
      t.string :safety

      t.timestamps
    end
  end
end
