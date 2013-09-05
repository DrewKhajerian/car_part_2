class CreateCars < ActiveRecord::Migration
  def change
    create_table :cars do |t|
      t.string :name
      t.string :company
      t.string :price
      t.string :price
      t.string :image
      t.string :price_range
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
      t.string :acceleration
      t.string :vehicle_type

      t.timestamps
    end
  end
end
