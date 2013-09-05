class AddCylindersToCars < ActiveRecord::Migration
  def change
    add_column :cars, :cylinders, :integer
  end
end
