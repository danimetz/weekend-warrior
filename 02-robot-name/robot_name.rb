#name: Random two uppercase letters and a three digit number
#require 'awesome_print'

class Robot

  attr_reader :name

  def initialize
    rand_name = (0..1).map { (65 + rand(26)).chr }
    3.times do |num|
      rand_name << rand(10)
    end
    rand_name.join

    @name = rand_name.join
  end

  def reset
    rand_name = (0..1).map { (65 + rand(26)).chr }
    3.times do |num|
      rand_name << rand(10)
    end
    @name = rand_name.join
    return @name
  end

end

yay = Robot.new

p yay.name

# (65...91).each do |char|
#   puts char.chr
# end
