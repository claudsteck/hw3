class Place < ApplicationRecord
  # talks to the "places" table
  
  Place.destroy_all

evanston = Place.new
evanston.name = "Evanston, IL"
evanston.save

new_york_city = Place.new
new_york_city.name = "New York, NY"
new_york_city.save

mexico_city = Place.new
mexico_city.name = "Mexico City, MX"
mexico_city.save

end
