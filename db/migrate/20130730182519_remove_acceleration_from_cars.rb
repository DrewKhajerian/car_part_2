class RemoveAccelerationFromCars < ActiveRecord::Migration
  def up
    remove_column :cars, :acceleration
  end

  def down
    add_column :cars, :acceleration, :string
  end
end
