class Bird

  def initialize(args={})
    @color = args[:color]

  end

  def fly
    "I can fly"
  end

end

class Penguin < Bird
  attr_reader :color

  def initialize(args={})
    super
    @home = args[:home]
  end

  def fly
    super + "Sorry, I can not"
  end
end

class Parrot < Bird
end
