puts "Destroying all flats..."
Flat.destroy_all

puts "Creating flat..."
Flat.create!(address: '2 Chome-11-3 Meguro, Meguro City, Tokyo 153-0063', name: 'Impact Hub Tokyo')
Flat.create!(address: 'Tokyo Tower, Minato City, Tokyo', name: 'Tokyo Tower')

puts "Created #{Flat.count} flats."