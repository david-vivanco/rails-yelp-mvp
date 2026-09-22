# This file should ensure the existence of records required to run the application in every environment (production,
# development, test). The code here should be idempotent so that it can be executed at any point in every environment.
# The data can then be loaded with the bin/rails db:seed command (or created alongside the database with db:setup).
#
# Example:
#
#   ["Action", "Comedy", "Drama", "Horror"].each do |genre_name|
#     MovieGenre.find_or_create_by!(name: genre_name)
#   end

# db/seeds.rb
# 1. Clean the database 🗑️
puts "Cleaning database..."
Restaurant.destroy_all

# 2. Create the instances 🏗️
puts "Creating restaurants..."
Restaurant.create!(name: "Dishoom", address: "7 Boundary St, London E2 7JE", phone_number: "+44 123 123 123", category: "chinese")
puts "Created Dishoom"
Restaurant.create!(name: "Pizza East", address: "56A Shoreditch High St, London E1 6PQ", phone_number: "+44 456 456 456", category: "italian")
puts "Created Pizza East"
Restaurant.create!(name: "Epicurien", address: "75008 Paris", phone_number: "+33 789 789 789", category: "french")
puts "Created Pizza East"
Restaurant.create!(name: "Leon de Bruxelles", address: "Avenue de la Madeleine, 75005 Paris", phone_number: "+33 456 456 456", category: "belgian")
puts "Created Pizza East"
Restaurant.create!(name: "Pizza Pino", address: "Montparnasse, 75006 Paris", phone_number: "+33 123 321 456", category: "italian")
puts "Created Pizza East"

# 3. Display a message 🎉
puts "Finished! Created #{Restaurant.count} restaurants."

# 4. Seed the DB: Terminal: rails db:seed
