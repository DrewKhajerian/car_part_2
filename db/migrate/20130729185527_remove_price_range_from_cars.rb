class RemovePriceRangeFromCars < ActiveRecord::Migration
  def up
    remove_column :cars, :price_range
  end

  def down
    add_column :cars, :price_range, :string
  end
end
