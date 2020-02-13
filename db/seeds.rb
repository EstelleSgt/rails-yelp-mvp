puts 'Cleaning database...'
Restaurant.destroy_all

puts "Creating restaurants..."
dishoom = { name: "Dishoom", address: "7 Boundary St, London E2 7JE", category: "chinese" }
pizza_east = { name: "Pizza East", address: "56A Shoreditch High St, London E1 6PQ", category: "italian" }
suhsi_place = { name: "Sushi Place", address: "21 King Street, London E3 1MD", category: "japanese" }
le_bourguignon = { name: "Le Bourguignon", address: "35 High Park Avenue, London E4 2NQ", category: "french" }
frites_land = { name: "Frites Land", address: "2 Camden Street, London E2 6RQ", category: "belgian" }

[dishoom, pizza_east, suhsi_place, le_bourguignon, frites_land].each do |attributes|
  restaurant = Restaurant.create!(attributes)
  puts "Created #{restaurant.name}"
end
puts "Finished!"
