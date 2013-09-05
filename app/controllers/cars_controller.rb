class CarsController < ApplicationController

	def index
		@cars = Car.all
		return_types
	end

	def show
		@car = Car.find(params[:id])
		get_cat_description
	end

	def return_types
		@TYPES = ["Mini Car","Coupe","Convertible","Compact (Sedan)","Hatchback","Wagon",
			"Mid-Size (Sedan)","Full-Size (Sedan)","Crossover","SUV (mid-size)",
			"SUV (full-size)","SUV","Minivan","Truck (full-size)"]
	end

	def get_cat_description
		@price_desc = "All prices are based on the manufacturer's suggested base list price. All additional options are added based on buyer's selections. Prices are all listed before tax."
		@class_desc = "If your looking for a specific vehicle type, choose that here."
		@fuel_desc = "Fuel type impacts fuel consumption costs. Diesal, Hybrid or Electric cars are more fuel/energu efficient even though they cost more to purchase."
		@consump_desc = "This is measured as he number of litres required to travel 100 km. The lower the number, the more fuel efficient the vehicle is."
		@trans_desc = "Choose the transmission type that suits your needs best. For example: If most of your driving is done in traffic, you should choose an Automatic transmission."
		@tow_desc = "This is total weight of additional items that need to be towed by the vehicle. It is measured based on the total weight (lbs) being towed (pulled)."
		@horse_desc = "The choice of horsepower will usually impact acceleration and fuel comsumption - the higher the horsepower, the faster the acceleration and the lower fuel consumption."
		@cylinder_desc = "The choice of cylinders will impact acceleration and fuel consumption. Most newer 4 cylinder engines have adequate acceleration and are normally very fuel efficient."
		@accel_desc = "Number of seconds it takes to accelerate from 0 to 100 km per hour"
		@dt_desc = "This is based on which wheels drive the car. Make your choice based on where you live and your driving habits. For example: If you have to drive through a lot of snow, all-wheel-drive or four-wheel drive would be your best choice."
		@relia_desc = "This is predicated reliability as indicated by Consumer Reports"
		@bump_desc = "This is the warranty that covers all components of the vehicle other than the normal wear and tear items (breaks, tires etc.)"
		@pt_desc = "This is the warranty that covers allm ajor components (power-train) of the vehicle other than normal wear and tear items (breaks, tires, etc.)"
		@rust_desc = "This is the warranty that covers rust and perforation."
		@safety_desc = "This is based on the Crash Test results of the Insurance Institute For Highway Saftey and listed by Consumer Reports."
		@rec_desc = "These recommendations are issued by Consumer Reports based on extensive testing."
	end

end
