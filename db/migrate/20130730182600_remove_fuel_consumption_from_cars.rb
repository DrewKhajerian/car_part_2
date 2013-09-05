class RemoveFuelConsumptionFromCars < ActiveRecord::Migration
  def up
    remove_column :cars, :fuel_consumption
  end

  def down
    add_column :cars, :fuel_consumption, :string
  end
end
