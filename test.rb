What does the following code print? Explain how the @bark instance variable is used in the speak() method.

class Dog
  def initialize
    @bark = "ruff ruff"
  end

  def speak
    "I like to #{@bark}"
  end
end

fido = Dog.new
puts fido.speak

###############

What does the following code print? Explain the result.

class Computer
  # @@sound = "beep beep"
  def initialize
    @sound = "beep beep"
  end

  def about
    "Sometimes I go #{@sound}"
  end
end

p Computer.about


##################


class Xyz

  def pots
    @nice = "something"
  end
end

xyz = Xyz.new
p xyz.pots


##################
What does the following code print?

class Xyz
  def paper
    unassigned_local_variable
  end
end

xyz = Xyz.new
p xyz.paper

##################
Explain the Fan.about method and why the about method definition uses the keyword self.

class Fan
  def self.about
    "my job is to keep people cool"
  end
end

p Fan.about


################
What does the following code print? Explain.

class Phone
  def Phone.job
    "Distract you from life"
  end
end

p Phone.job



##################


Create a class called MyCar.
1. When you initialize a new instance or object of the class, allow the user to define some instance variables that tell us the year, color, and model of the car.
2. Create an instance variable that is set to 0 during instantiation of the object to track the current speed of the car as well.
3. Create instance methods that allow the car to speed up, brake, and shut the car off.
4. Add an accessor method to your MyCar class to change and view the color of your car.
5. Then add an accessor method that allows you to view, but not modify, the year of your car.


class MyCar
  attr_accessor :color
  attr_reader :year

  def initialize(args={})
    @color = args[:color]
    @year = args[:year]
    @model = args[:model]
    @speed = 0
  end


  def speed_up(number)
    @speed += number
  end

  def brake(number)
    @speed -= number
  end

  def shut_off
    @speed = 0
  end
end
