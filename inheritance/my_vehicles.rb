# my_vehicles.rb

class Vehicle
  attr_accessor :color
  attr_reader :year, :model

  @@number_of_vehicles = 0

  def initialize(year, color, model)
    @year = year
    @color = color
    @model = model
    @speed = 0
    @@number_of_vehicles += 1
  end

  def self.number_of_vehicles
    puts "The total number of vehicles is #{@@number_of_vehicles}"
  end

  def self.calculate_gas_mileage(gallons, miles)
    puts "You are getting #{miles / gallons} miles per gallon of gas."
  end

  def speed_up(num)
    @speed += num
    puts "You push the gas and accelerate by #{num} mph!"
  end

  def brake(num)
    @speed -= num
    puts "You hit the brake and slow down by #{num} mph!"
  end

  def current_speed
    puts "You are currently traveling at #{@speed} mph."
  end

  def shut_off
    @speed = 0
    puts "You have parked safely!"
  end

  def spray_paint(c)
    self.color = c
    puts "Wow! That new #{c} color looks awesome!!"
  end

  def age
    "Your vehicle is #{years_old} years old!"
  end

  private

  def years_old
    Time.now.year - self.year
  end
end

module Raceable
  def drag_race
    puts "You've entered a drag race!"
  end
end

class MyCar < Vehicle
  NUM_DOORS = 4

  include Raceable

  def initialize(year, color, model)
    super
  end

  def to_s
    "Your car is a #{year} #{color} #{@model}. How cool!"
  end
end

class MyTruck < Vehicle
  NUM_DOORS = 2

  def initialize(year, color, model)
    super
  end

  def to_s
    "Your truck is a #{year} #{color} #{@model}. How cool!"
  end
end

ford = MyCar.new(2012, 'grey', 'Ford Focus')
puts ford
ford.speed_up(60)
ford.drag_race
ford.brake(10)
ford.current_speed
ford.shut_off
ford.spray_paint('silver')
puts ford.age

truck = MyTruck.new(2015, 'silver', 'Chevy Colorado')
puts truck
truck.speed_up(20)
truck.current_speed
truck.brake(5)
truck.shut_off
truck.spray_paint('red')

MyTruck.calculate_gas_mileage(16, 350)
Vehicle.number_of_vehicles

puts "--- Ancestors for Vehicle ---"
puts Vehicle.ancestors
puts "--- Ancestors for MyCar ---"
puts MyCar.ancestors
puts "--- Ancestors for MyTruck ---"
puts MyTruck.ancestors
