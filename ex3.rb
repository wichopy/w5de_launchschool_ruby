
class GoodDog
  #use attribute accessor for simpler get and sets.
  attr_accessor :name, :height, :weight
  #attr_reader
  #attr_writer
  #All attr take symbols. can call multiple by seperating variables with commas.

  #Constant variable
  DOG_YEARS = 7

  attr_accessor :name, :age

  #class variables
  @@number_of_dogs = 0

  def initialize(n, a)
    self.name = n
    self.age = a * DOG_YEARS
    #this is an instance variable. It holds the state of the object.
    # @name = n
    # @height = h
    # @weight = w
    @@number_of_dogs += 1
  end
  #class methodss
  def self.what_am_i
    "I'm a GoodDog class!"
  end

  def self.total_number_of_dogs
    @@number_of_dogs
  end

  def to_s
    "This dog's name is #{name} and it is #{age} in dog years."
  end
end

# puts GoodDog.total_number_of_dogs

# dog1 = GoodDog.new
# dog2 = GoodDog.new

#class variable to keep track of number of objects, instead of counting objects.
puts GoodDog.total_number_of_dogs

sparky = GoodDog.new("Sparky", 4)
puts sparky.age

puts GoodDog.total_number_of_dogs

puts sparky

p sparky
puts sparky.inspect