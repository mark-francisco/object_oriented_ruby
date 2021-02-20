# Exercise:
# Copy the Car and Bicycle class into your file (same as previous exercise): https://gist.github.com/peterxjang/e9b69b4de36b2c41ef4b
# This time, use a module instead of inheritance to DRY up the code.
# Bonus: Read more about the distinction between class composition and module mixins (both are an alternative to class inheritance): http://stackoverflow.com/questions/15754768/when-do-we-use-ruby-module-vs-using-class-composition (edited) 

module Driveable
  def initialize
    @speed = 0
    @direction = 'north'
  end

  def brake
    @speed = 0
  end

  def accelerate
    @speed += 10
  end

  def turn(new_direction)
    @direction = new_direction
  end
end


class Car
  include Driveable
  
  def honk_horn
    puts "Beeeeeeep!"
  end
end

class Bike
  include Driveable

  def ring_bell
    puts "Ring ring!"
  end
end


chevy = Car.new
p chevy.turn("upside-down")

bike = Bike.new
bike.ring_bell
p bike.brake