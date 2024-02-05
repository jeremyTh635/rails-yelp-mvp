# This file should ensure the existence of records required to run the application in every environment (production,
# development, test). The code here should be idempotent so that it can be executed at any point in every environment.
# The data can then be loaded with the bin/rails db:seed command (or created alongside the database with db:setup).
#
# Example:
#
#   ["Action", "Comedy", "Drama", "Horror"].each do |genre_name|
#     MovieGenre.find_or_create_by!(name: genre_name)
#   end
puts "Cleaning database..."
Restaurant.destroy_all
puts "Creating restaurants..."
strawberry = { name: "The Strawberry Thief", address: "26 Broad St., Bristol BS1 2HG", phone_number: "0117 925 6925", category: "belgian" }
mayflower = { name: "Mayflower", address: "1a, 5a Haymarket Walk, Bristol BS1 3LN", phone_number: "0117 925 0555", category: "chinese" }
fujiyama = { name: "Fujiyama", address: "21 Regent St., Clifton, Bristol BS8 4HW", phone_number: "0117 907 7840", category: "japanese" }
guingette = { name: "La Guingette", address: "243 Cheltenham Rd., Bristol BS6 5QP", phone_number: "0117 329 0600", category: "french" }
san_carlo = { name: "San Carlo", address: "44 Corn St., Bristol BS1 1HQ", phone_number: "0117 922 6586", category: "italian" }
little_french = { name: "Little French", address: "2 North View, Westbury Park, Bristol BS6 7QB", phone_number: "0117 970 6276", category: "french"}
[strawberry, mayflower, fujiyama, guingette, san_carlo, little_french].each do |attributes|
  restaurant = Restaurant.create!(attributes)
  puts "Created #{restaurant.name}"
end
puts "Finished!"
