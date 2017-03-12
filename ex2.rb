# good_dog.rb

class GoodDog
  #use attribute accessor for simpler get and sets.
  attr_accessor :name, :height, :weight
  #attr_reader
  #attr_writer
  #All attr take symbols. can call multiple by seperating variables with commas.

  def initialize(n, h, w)
    #this is an instance variable. It holds the state of the object.
    @name = n
    @height = h
    @weight = w
  end

  #need self. so the methods know we are referring to this object .
  def change_info(n, h, w)
    self.height = h
    self.name = n
    self.weight = w
  end

# this is an instance method
# removed the @ and instead called the getter method.
  def speak 
    "#{name} says Arf!"
  end

  def info
    "#{self.name} weighs #{self.weight} and is #{self.height} tall."
  end

end

sparky = GoodDog.new('Sparky', '12 inches', '10 lbs')
puts sparky.info      # => Sparky weighs 10 lbs and is 12 inches tall.

sparky.change_info('Spartacus', '24 inches', '45 lbs')
puts sparky.info      # => Spartacus weighs 45 lbs and is 24 inches tall.
# sparky = GoodDog.new("Sparky")       # => "This object was initialized!"
# # puts sparky
# puts sparky.speak
# fido = GoodDog.new("Fido")
# # puts fido
# puts fido.speak

# puts sparky.name

# sparky.name = "spartacus"

# puts sparky.name


