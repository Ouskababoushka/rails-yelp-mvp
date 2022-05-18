# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the bin/rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

puts "Cleaning database..."
Restaurant.destroy_all

puts "Creating restaurants..."
ma_poule = { name: "Ma Poule", address: "7 Boundary St, Nantes", phone_number:"+33-655-520-668", category: "french"}
patte_folle = { name: "Patte", address: "7 Av Henri Adam, Nantes", phone_number:"+33-755-556-720", category: "italian" }
papill = { name: "Papill", address: "56A Shoreditch High St, Nantes", phone_number:"+33-700-555-094", category: "french"}
la_mangouste = { name: "La Mangouste", address: "6 rue Cool Adress, Nantes", phone_number:"+33-700-555-546", category: "chinese" }
five_guys = { name: "Five Guys", address: "89 Rue Awesome Adress, London", phone_number:"+33-655-561-536", category: "belgian" }


[ ma_poule, patte_folle, papill, la_mangouste, five_guys ].each do |attributes|
  restaurant = Restaurant.create!(attributes)
  puts "Created #{restaurant.name}"
end
puts "Finished!"
