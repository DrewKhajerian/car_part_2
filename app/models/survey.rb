class Survey < ActiveRecord::Base
  attr_accessible :min_price, :max_price, :acceleration, :bump_to_bump, :drive_train, :fuel_consumption, :fuel_type, :head_room, :leg_room, :reliability, :ride_handling, :safety, :seats, :shoulder_room, :towing, :transmission, :trunk_space, :vehicle_type, :war_power, :war_rust, :horsepower, :cylinders

end

