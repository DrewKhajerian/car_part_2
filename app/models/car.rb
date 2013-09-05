class Car < ActiveRecord::Base
  attr_accessible :acceleration, :bump_to_bump, :company, :drive_train, :fuel_consumption, :fuel_type, :head_room, :image, :leg_room, :name, :price, :reliability, :ride_handling, :safety, :seats, :shoulder_room, :towing, :transmission, :trunk_space, :vehicle_type, :war_power, :war_rust, :cylinders, :horsepower, :consumer_rec

  def formatted_price
  	new_price = price * 1000
    sprintf("%.2f", new_price)
  end



end
