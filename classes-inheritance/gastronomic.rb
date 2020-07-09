require_relative 'restaurant'

class Gastronomic < Restaurant
  attr_reader :stars, :category


  def initialize(name, city, capacity, category, stars, chef_name)
    super(name, city, capacity)
    @category = category
    @stars = stars

    # self => refers to the instance we are creating
    @chef = Chef.new(chef_name, self)
  end

  # self => refers to the 'Gastronomic' class
  def self.categories
    # self => refers to the 'Gastronomic' class because we are in a class method
    %w[murican_modern breastaurant]
  end

  def print_bookings
    # self => refers to the instance we are calling this method on
    puts "=" * 30
    puts "FANCY DISPLAY".center(30)
    puts "=" * 30
    super
    puts "=" * 30
  end
end