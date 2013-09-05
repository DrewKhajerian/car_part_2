class AddMaxPriceToSurveys < ActiveRecord::Migration
  def change
    add_column :surveys, :max_price, :integer
  end
end
