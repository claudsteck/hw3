class Place < ApplicationRecord
  # talks to the "places" table
  Place.destroy_all

evanston = Place.new
evanston.name = "Evanston, IL"
evanston.save

end
