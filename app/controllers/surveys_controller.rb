class SurveysController < ApplicationController
 
  def new
  	@survey = Survey.new
  	survey_field_values
  	get_cat_description
  end

  def create
  	@survey = Survey.new(params[:survey])

  	if @survey.save
  		redirect_to survey_path(@survey), :notice => "Here are the results"
  	else
  		render :new
  	end
  end

  def show
  	@survey = Survey.find(params[:id])
  	return_results(@survey)
	  # if @results_hash.length <= 1
		# 	render :new, :alert => "Sorry, no cars exist with those specifications"
		# end
  end

  def destroy

  end

  def return_results(survey)
	  @cars = Car.all
		@results_hash = {}

		@cars.each do |car|
			@matches = 0
			@counter = 0
			if (survey.min_price.to_f <= car.price) && (car.price <= survey.max_price.to_f)
				@counter += 1
				@matches += 1
				if survey.vehicle_type != "-"
					@counter += 1
					if survey.vehicle_type.downcase == car.vehicle_type.downcase
						@matches += 1
					end
				end # vehicle type
				if survey.transmission != "-"
					@counter += 1
					if survey.transmission.downcase == car.transmission.downcase
						@matches +=1
					end
				end
				if survey.drive_train != "-"
					@counter += 1
					if survey.drive_train.downcase == car.drive_train.downcase
						@matches +=1
					end
				end
				if survey.towing != "-"
					@counter += 1
					if survey.towing == car.towing
						@matches +=1
					end
				end
				if survey.fuel_type != "-"
					@counter += 1
					if survey.fuel_type.downcase == car.fuel_type.downcase
						@matches +=1
					end
				end
				if survey.horsepower != "-"
					@counter += 1
					if  survey.horsepower.to_i <= car.horsepower
						@matches +=1
					end
				end
				if survey.cylinders != "-"
					@counter += 1
					if  survey.cylinders.to_i <= car.cylinders
						@matches +=1
					end
				end
				if survey.acceleration != "-"
					@counter += 1
					if  survey.acceleration.to_f >=  car.acceleration
						@matches +=1
					end
				end
				if survey.fuel_consumption != "-"
					@counter += 1
					if survey.fuel_consumption.to_f >= car.fuel_consumption
						@matches +=1
					end
				end
				if survey.reliability != "-"
					@counter += 1
					if survey.reliability.downcase == car.reliability.downcase
						@matches +=1
					end
				end
				if survey.safety != "-"
					@counter += 1
					if survey.safety.downcase == car.safety.downcase
						@matches +=1
					end
				end
				if survey.bump_to_bump != "-"
					@counter += 1
					if survey.bump_to_bump.downcase == car.bump_to_bump.downcase
						@matches +=1
					end
				end
				if survey.war_power != "-"
					@counter += 1
					if survey.war_power.downcase == car.war_power.downcase
						@matches +=1
					end
				end
				if survey.war_rust != "-"
					@counter += 1

					if survey.war_rust.downcase == car.war_rust.downcase
						@matches +=1
					end
				end
			end # price range

			if @counter != 0
				@match_rating = ((@matches.to_f/@counter.to_f)*100).to_i

				if (@match_rating) >= 75
					@results_hash.merge!(car.id => @match_rating)
				end
			end

		end # each

		@results_hash = @results_hash.sort_by {|k,v| v}
	end # return_results

	def survey_field_values
		@MIN_PRICE = [10,15 ,20,25,30,35,40,45,50,55,60,65,70,75,80,90,100] 
		@MAX_PRICE = [15,20,25,30,35,40,45,50,55,60,65,70,75,80,90,100,115,130,150,200]
		@TYPES = ["-","Mini Car","Coupe","Convertible","Compact (Sedan)","Hatchback","Wagon",
			"Mid-Size (Sedan)","Full-Size (Sedan)","Crossover","SUV (mid-size)",
			"SUV (full-size)","SUV","Minivan","Truck (full-size)"]
		@HORSEPOWER = ["-","80","120","160","200","240","280","320","360","400"]
		@CYLINDERS = ["-","4","6","8"]
		@TRANS = ["-","Standard","Automatic","Automatic with Manual option","Manual"]
		@DRIVE_TRAINS = ["-","Front-Wheel Drive","Rear-Wheel Drive","4 Wheel Drive","All-Wheel Drive"]
		@FUEL_TYPES = ["-","Gas","Diesel","Hybrid","Electric",]
		@FUEL_CONSUMPTIONS = ["-","5","6","7","8","9","10","11","12","15"]
		@TOWING = ["-","<1500lbs","1500-2500lbs","2500lbs-3500lbs","3500lbs-5000lbs",">5000lbs"]
		@ACCELERATIONS = ["-","11.5","10","8.5","7","5.5","4"]
		@RELIABILTY = ["-","Good","Very Good","Excellent","Fair","Poor"]
		@BUMP_TO_BUMP = ["-","3 years, 60K","3 years, 80k","4 years, 80k"]
		@WAR_POWER = ["-","4 years, 80k","5 years, 100k","5 years, 160k"]
		@WAR_RUST = ["-","5 years, 160k","6 years, 160k","5 years, unlimited","8 years, unlimited","10 years, unlimited","12 years, unlimited"]
		@SAFETY = ["-","Marginal","Good","Acceptable"]	
	end

	def get_cat_description
		@minp_desc = "All prices are based on the manufacturer's suggested base list price. All additional options are added based on buyer's selections. Prices are all listed before tax."
		@maxp_desc = "All prices are based on the manufacturer's suggested base list price. All additional options are added based on buyer's selections. Prices are all listed before tax."
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
		@pt_desc = "This is the warranty that covers all major components (power-train) of the vehicle other than normal wear and tear items (breaks, tires, etc.)"
		@rust_desc = "This is the warranty that covers rust and perforation."
		@safety_desc = "This is based on the Crash Test results of the Insurance Institute For Highway Saftey and listed by Consumer Reports."
	end

	# def no_match
	# 	@no_match.each do |k,v|
	# 		if Car.find(params[k]) == car.k
	# 			v.each do | attr |
	# 				if attr == "Attr Name"
	# 					# change color to red? or add x, all matched cats will have a checkmark?
	# 				end	
	# 			end
	# 		end
	# 	end
	# end

end
