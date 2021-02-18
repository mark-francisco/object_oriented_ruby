# • Use inheritance to DRY up the classes. Note - a car is NOT in a type of bicycle, and a bicycle is NOT a type of car!
# • To test it, create a bicycle and car instance from your newly modified classes (you can create them at the bottom of your file). First, have them accelerate. Then, make sure a bike can “Ring ring!” and a car "Beeeeeeep!"



class Vehicle
  attr_accessor :speed, :direction

  def initialize(hash={})
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

# Exercise:
# *Add car specific attributes (instance variables) to the Car class (fuel, make, model, etc.) and bicycle specific attributes to the Bicycle class (type, weight, etc.). Use the super method to keep the initialize methods DRY.


class Car < Vehicle
  attr_accessor :engine, :mpg

  def initialize(hash={})
    super
    @engine = hash[:engine] || "none"
    @mpg = hash[:mpg] || 1
  end

  def honk_horn
    puts "Beeeeeeep!"
  end
end

class Bike < Vehicle
  attr_accessor :basket, :type

  def initialize(hash={})
    super
    @basket = hash[:basket] || "normal"
    @type = hash[:type] || "dirt bike"
  end

  def ring_bell
    puts "Ring ring!"
  end
end

p bike = Bike.new({ :basket => "huge", :type => "tricycle" })
p bike.basket
p car = Car.new({ :engine => "v8", :mpg => "15" })
p car.engine
p car.speed
car.accelerate
p car.speed

p vehicle = Vehicle.new({ :direction => "down" })
p vehicle.direction


new_car = Car.new()
p new_car.engine
p new_car.mpg

