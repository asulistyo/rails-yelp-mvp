# This file should ensure the existence of records required to run the application in every environment (production,
# development, test). The code here should be idempotent so that it can be executed at any point in every environment.
# The data can then be loaded with the bin/rails db:seed command (or created alongside the database with db:setup).
#
# Example:
#
#   ["Action", "Comedy", "Drama", "Horror"].each do |genre_name|
#     MovieGenre.find_or_create_by!(name: genre_name)
#   end

# 1. Clean the database 🗑️
puts "Cleaning database..."
Restaurant.destroy_all

# 2. Create the instances 🏗️
puts "Creating restaurants..."
Restaurant.create!(name: "The Wandering Stairs", address: "The Crystarium (X10 Y15)")
puts "Created Dishoom"
Restaurant.create!(name: "The Dwarven Dive", address: "Kholusia (X18 Y18)")
puts "Created Pizza East"
Restaurant.create!(name: "The Last Stand", address: "Old Sharlayan")
puts "The Last Stand"
Restaurant.create!(name: "The Teahouse", address: "Kugane (X10 Y10)")
puts "The Teahouse"
Restaurant.create!(name: "The Alehouse", address: "South Shroud (X18 Y20)")
puts "The Alehouse"

# 3. Display a message 🎉
puts "Finished! Created #{Restaurant.count} restaurants."
