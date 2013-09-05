class AddVehicleTypeToSurvey < ActiveRecord::Migration
  def change
    add_column :surveys, :vehicle_type, :string
  end
end
