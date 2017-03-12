
class GoodDog
  #use attribute accessor for simpler get and sets.
  attr_accessor :name, :height, :weight
  #attr_reader
  #attr_writer
  #All attr take symbols. can call multiple by seperating variables with commas.

  #class variables
  @@number_of_dogs = 0

  def initialize#(n, h, w)
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
end

puts GoodDog.total_number_of_dogs

dog1 = GoodDog.new
dog2 = GoodDog.new

#class variable to keep track of number of objects, instead of counting objects.
puts GoodDog.total_number_of_dogs