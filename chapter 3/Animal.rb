class Animal
  attr_reader :name, :age

  def name=(value)
    if value == ""
      raise "Name can't be blank!"
    end
    @name = value
  end

  def age=(value)
    if value < 0
      raise "An age of #{value} isn't valid!"
    end
      @age = value
  end

  def report_age
    puts "#{@name} is #{@age} years old."
  end

  def talk
    puts "#{@name} says Bark!"
  end

  def move(destination)
    puts "#{@name} runs to the #{destination}"
  end
end

class Dog < Animal
  def to_s
    "#{@name} the dog, age #{@age}"
  end
end

class Bird < Animal
  def talk
    puts "#{@name} syas Chirp! Chirp!"
  end
end

class Cat < Animal
  def talk
    puts "#{@name} syas Meow!"
  end
end

class Armadillo < Animal
  def move(destination)
    puts "#{@name} unrolls!"
    super
  end
end

whiskers = Cat.new
whiskers.name = "Whiskerks"
fido = Dog.new
fido.name = "Fido"
fido.age = 3
puts fido
polly = Bird.new
polly.name = "Polly"
arma = Armadillo.new
arma.name = "Arma"

polly.age = 2
polly.report_age
fido.move("yard")
whiskers.talk
polly.talk
arma.move("hole")
