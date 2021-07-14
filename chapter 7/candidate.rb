# frozen_string_literal: true

class Candidate
  attr_accessor :name, :age, :occupation, :hobby, :birthplace

  def initialize(name, age:, occupation:, hobby: nil, birthplace: 'Sleepy Creek')
    self.name = name
    self.age = age
    self.occupation = occupation
    self.hobby = hobby
    self.birthplace = birthplace
  end
end

Candidate.new('Pavel', age: 31, occupation: 'Three')
