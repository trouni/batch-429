class Car # UpperCamelCase for class names
  attr_accessor :color
  # Shortcut for both reader and writer
  
  # attr_writer :color
  # def color=(new_color)
  #   @color = new_color
  # end

  # attr_reader :color
  attr_reader :brand
  # def color
  #   return @color
  # end

  def initialize(color, brand = 'lamborghini') # Constructor
    # *instance* variables
    @color = color # String
    @brand = brand
    @engine_running = false # Boolean
  end

  # def engine_running?
  #   return @engine_running
  # end

  def start_engine # *instance* method
    inject_fuel
    trigger_spark
    pump_pistons

    @engine_running = true
  end

  def paint_car(new_color)
    @color = new_color
  end

  private

  def inject_fuel
    puts "Injecting fuel"
  end

  def trigger_spark
    puts "Triggering spark"    
  end

  def pump_pistons
    puts "Pumping pistons"
  end
end

# Encapsulation
# All instance variables only live inside the instance
# They are hidden to the outside by default