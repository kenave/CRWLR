# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)
# require 'pry'


puts "Creating Users"

u1 = User.find_or_create_by(name: "Nick")
u2 = User.find_or_create_by(name: "Ken")

puts "Users created"
puts "Creating loads of restaurants"

file = File.read('db/Yelp_JSON/LV_open_restaurants_processed.json')
data = JSON.parse(file)

Place.destroy_all
# binding.pry

data["restaurants"].each do |place|
  # binding.pry
  if place["attributes"] != nil
    # binding.pry
    Place.find_or_create_by(business_id: place["business_id"], name: place["name"], address: place["address"], city: place["city"], state: place["state"], postal_code: place["postal_code"], latitude: place["latitude"], longitude: place["longitude"], stars: place["stars"], price_range: place["attributes"]["RestaurantsPriceRange2"], categories: place["categories"])
    puts "Loaded #{place["name"]}"
  else
    Place.find_or_create_by(business_id: place["business_id"], name: place["name"], address: place["address"], city: place["city"], state: place["state"], postal_code: place["postal_code"], latitude: place["latitude"], longitude: place["longitude"], stars: place["stars"], price_range: nil, categories: place["categories"])
    puts "Loaded #{place["name"]}"
  end
end

puts "Created restaurants"
puts "Creating loads of bars"

file = File.read('db/Yelp_JSON/LV_open_bars_processed.json')
data = JSON.parse(file)

data["bars"].each do |place|
  # binding.pry
  if !place["attributes"] == nil
    Place.find_or_create_by(business_id: place["business_id"], name: place["name"], address: place["address"], city: place["city"], state: place["state"], postal_code: place["postal_code"], latitude: place["latitude"], longitude: place["longitude"], stars: place["stars"], price_range: place["attributes"]["RestaurantsPriceRange2"], categories: place["categories"])
    puts "Loaded #{place["name"]}"
  else
    Place.find_or_create_by(business_id: place["business_id"], name: place["name"], address: place["address"], city: place["city"], state: place["state"], postal_code: place["postal_code"], latitude: place["latitude"], longitude: place["longitude"], stars: place["stars"], price_range: nil, categories: place["categories"])
    puts "Loaded #{place["name"]}"
  end
end

puts "Created bars"
