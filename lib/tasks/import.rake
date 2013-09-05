require 'csv'    

namespace :import_cars_csv do
	task :import => :environment do    
    CSV.foreach('imports/car_table.csv', :headers => true) do |row|
      Car.create!(row.to_hash)
    end
	end
end