# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the bin/rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: "Star Wars" }, { name: "Lord of the Rings" }])
#   Character.create(name: "Luke", movie: movies.first)

  
Place.destroy_all
Entry.destroy_all

evanston = Place.new
evanston.name = "Evanston, IL"
evanston.save

evanston_entry = Entry.new
evanston_entry.title = "Home of Kellogg School of Management"
evanston_entry.description = "Evanston is where I've lived for two years now - I live in downtown and attend school at Kellogg, NU's MBA program"
evanston_entry.posted_on = Date.new(2024,2,18)
evanston_entry.place_id = evanston["id"]
evanston_entry.save

new_york_city = Place.new
new_york_city.name = "New York, NY"
new_york_city.save

new_york_city_entry = Entry.new
new_york_city_entry.title = "The Big Apple! Aka Home"
new_york_city_entry.description = "NYC is my favorite city, it's where I grew up arond and where I've lived for 5+ years."
new_york_city_entry.posted_on = Date.new(2024,2,18)
new_york_city_entry.place_id = new_york_city["id"]
new_york_city.save

mexico_city = Place.new
mexico_city.name = "Mexico City, MX"
mexico_city.save

mexico_city_entry = Entry.new
mexico_city_entry.title = "CDMX"
mexico_city_entry.description = "CDMX is beautiful, it's where my fiancee grew up and we spent NYE there this year!"
mexico_city_entry.posted_on = Date.new(2024,2,18)
mexico_city_entry.place_id = mexico_city["id"]
mexico_city.save
