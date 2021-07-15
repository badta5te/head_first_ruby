# frozen_string_literal: true

class Steak
  include Comparable

  GRADES = {
    'Prime' => 3,
    'Choice' => 2,
    'Select' => 1
  }

  attr_accessor :grade

  def <=>(other)
    if GRADES[grade] < GRADES[other.grade]
      -1
    elsif GRADES[grade] == GRADES[other.grade]
      0
    else
      1
    end
  end
end

prime = Steak.new
prime.grade = 'Prime'
choice = Steak.new
choice.grade = 'Choice'

puts prime > choice
puts prime < choice
