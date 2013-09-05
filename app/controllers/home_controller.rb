class HomeController < ApplicationController
  def index
  	get_images
  end

  def get_images
	  @image_array = []
  	@cars = Car.all
  	@cars.each do |car|
  		@image_array << car.name
  	end
  end
end
