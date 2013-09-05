class AddMinPriceToSurveys < ActiveRecord::Migration
  def change
    add_column :surveys, :min_price, :integer
  end
end
