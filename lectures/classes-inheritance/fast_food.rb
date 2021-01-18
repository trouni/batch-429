require_relative 'restaurant'

class FastFood < Restaurant
  attr_reader :prep_time

  def initialize(name, city, capacity, prep_time)
    super(name, city, capacity)
    @prep_time = prep_time
  end

  def book(customer)
    puts "Sorry, we don't take bookings. We are fast food restaurant, idiot."
  end

  def print_bookings
    puts "Sorry, we don't take bookings. We are fast food restaurant, idiot."
  end
end