class AddHorsepowerRecToSurveys < ActiveRecord::Migration
  def change
    add_column :surveys, :horsepower, :integer
  end
end
