# Not part of the TODO Manager

class Cat
  attr_reader :name, :color
  # def name
  #   @name
  # end

  # attr_writer :color

  def initialize(name, color)
    @name = name
    @color = color
  end

  def dye(new_color)
    @color = new_color
  end

  def self.branch
    "mammals"
  end
end

garfield = Cat.new('Garfield', 'orange')
p garfield

tom = Cat.new('Tom', 'grey')

puts "#{garfield.name} and #{tom.name}."
tom.dye('blond')
puts "Tom is now a #{tom.color} cat."

puts Cat.branch
