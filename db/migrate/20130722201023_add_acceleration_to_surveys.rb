class AddAccelerationToSurveys < ActiveRecord::Migration
  def change
    add_column :surveys, :acceleration, :string
  end
end
