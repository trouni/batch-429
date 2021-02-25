require_relative 'restaurant'
require_relative 'fast_food'
require_relative 'gastronomic'
require_relative 'chef'

pdx = Restaurant.new('PDX', 'Shibuya', 45)
puts "#{pdx.name} is located in #{pdx.city}"

hooters = Restaurant.new('Hooters', 'Ginza', 80)
puts "#{hooters.name} is located in #{hooters.city}"

puts "PDX has a capacity of #{pdx.capacity} people."
puts "PDX is having some renovation work..."
sleep(1)
pdx.capacity = 65
puts "PDX now has a capacity of #{pdx.capacity} people."

puts "Is #{hooters.name} open right now?"
puts hooters.open? ? 'Yes' : 'No'

puts "Patrick and Rob are booking #{hooters.name}."
hooters.book('Patrick')
hooters.book('Rob')

puts "The customer list for #{hooters.name} is:"
hooters.bookings.each do |booking|
  puts "- #{booking}"
end


wendys = FastFood.new('Wendy\'s', 'Roppongi', 30, 5)
jiro = Gastronomic.new("Jiro's", 'Ginza', 10, 'sushi', 3, "Jiro")

puts "Samir, Micky and Moe are booking #{jiro.name}."
jiro.book('Samir')
jiro.book('Micky')
jiro.book('Moe')

jiro.print_bookings

# yoshiki = Chef.new('Yoshiki', jiro)
# patrick = Chef.new('Patrick', hooters)

# puts "#{yoshiki.name} is the chef at #{yoshiki.restaurant.name} in #{yoshiki.restaurant.city}."



