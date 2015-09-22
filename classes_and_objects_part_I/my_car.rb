# my_car.rb

class MyCar
  attr_accessor :color
  attr_reader :year

  def initialize(year, color, model)
    @year = year
    @color = color
    @model = model
    @speed = 0
  end

  def spray_paint(c)
    self.color = c
    puts "You spray painted your car #{c}!!"
  end

  def speed_up(num)
    @speed += num
    puts "You push the gas and accelerate by #{num} mph!"
  end

  def brake(num)
    @speed -= num
    puts "You hit the brake and slowed down by #{num} mph!"
  end

  def current_speed
    puts "You are currently traveling at #{@speed} mph."
  end

  def shut_off
    @speed = 0
    puts "You have turned off and parked your car safely!"
  end
end

mustang = MyCar.new(2012, 'red', 'Mustang')
mustang.current_speed
mustang.speed_up(10)
mustang.current_speed
mustang.speed_up(5)
mustang.current_speed
mustang.brake(10)
mustang.current_speed
mustang.shut_off
mustang.current_speed

mustang.color = 'blue'
puts mustang.color
puts mustang.year

mustang.spray_paint('hot pink')
puts mustang.color