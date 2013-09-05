class RemoveCylindersFromSurveys < ActiveRecord::Migration
  def up
    remove_column :surveys, :cylinders
  end

  def down
    add_column :surveys, :cylinders, :integer
  end
end
