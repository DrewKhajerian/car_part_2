class RemoveTypeFromSurvey < ActiveRecord::Migration
  def up
    remove_column :surveys, :type
  end

  def down
    add_column :surveys, :type, :string
  end
end
