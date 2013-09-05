class RemovePriceFromCars < ActiveRecord::Migration
  def up
    remove_column :cars, :price
  end

  def down
    add_column :cars, :price, :integer
  end
end
