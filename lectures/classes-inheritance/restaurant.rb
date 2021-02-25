require 'time'

class Restaurant
  attr_accessor :capacity
  attr_reader :name, :city, :bookings

  def initialize(name, city, capacity)
    @name = name
    @city = city
    @capacity = capacity

    @bookings = []
  end

  def book(customer)
    # customer is a string (name)
    @bookings << customer
  end

  def print_bookings
    puts "The customer list for #{@name} is:"
    @bookings.each do |booking|
      puts "- #{booking}"
    end
  end

  def open?
    Time.now.hour >= 18 && Time.now.hour <= 23
  end

  def closed?
    return !open?
  end
end


