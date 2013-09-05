class RemovePriceRangeFromSurveys < ActiveRecord::Migration
  def up
    remove_column :surveys, :price_range
  end

  def down
    add_column :surveys, :price_range, :string
  end
end
