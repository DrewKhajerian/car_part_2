class AddCylindersToSurveys < ActiveRecord::Migration
  def change
    add_column :surveys, :cylinders, :string
  end
end
