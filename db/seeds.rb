# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)
puts "Cleaning database..."
#Restaurant.destroy_all

puts "Creating restaurants..."
dishoom = { name: "Dishoom", address: "7 Boundary St, London E2 7JE", phone_number: "06.02.03.05.12", category: "french" }
pizza_east =  { name: "Pizza East", address: "56A Shoreditch High St, London E1 6PQ", phone_number: "06.02.03.05.18", category: "italian" }
le_petit_nice = { name: "Gastro", address: "17 rue General Kennedy, 13000 Marseille", phone_number: "06.02.03.05.15", category: "chinese" }
pizza_hut =  { name: "American Pizza", address: "56 rue Rivoli, 13100 Marseille", phone_number: "06.02.03.05.16", category: "belgian" }
chez_dede = { name: "Gastronomique", address: "7 rue BO, 13210 ST remy de Provence", phone_number: "06.02.03.05.19", category: "japanese" }

[dishoom, pizza_east, le_petit_nice, pizza_hut, chez_dede].each do |attributes|
  restaurant = Restaurant.create!(attributes)
  puts "Created #{restaurant.name}"
end
puts "Finished!"
