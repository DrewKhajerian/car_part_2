class AddAccelerationToCars < ActiveRecord::Migration
  def change
    add_column :cars, :acceleration, :float
  end
end
