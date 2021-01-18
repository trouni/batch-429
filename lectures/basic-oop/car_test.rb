require_relative 'car'

moe = Car.new('red', 'toyota')
marc = Car.new('white', 'ferrari')

puts "What color is Moe's car?"
puts moe.color

puts "Let's paint the car purple."
# moe.paint_car('purple')
moe.color = 'purple'

puts "Now the car is #{moe.color}"

