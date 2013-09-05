class AddFuelConsumptionToCars < ActiveRecord::Migration
  def change
    add_column :cars, :fuel_consumption, :float
  end
end
