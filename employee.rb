class Person
  attr_reader :name

  def initialize(args={})
    @name = args[:name]
  end
end

class Employee < Person
  attr_accessor :salary

end

# class Code
#   def self.write_code(name)
#     "#{name} can write some bugs"
#   end
# end

module Code
  def write_code
    "#{name} can write some bugs"
  end


  # def self.write_code
  #
  #   "#{self }class method"
  # end
end


class Developer < Emploeey
  include Code
  # def write_code
  #   Code.write_code(name)
  # end
end


module Test
  def write_test
    "#{name} writes some tests"
  end
end

class Tester < Emploeey
  include Code
end


class Intern < Person

  include Code
  include Test

end
