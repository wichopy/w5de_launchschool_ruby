# good_dog.rb

class GoodDog
  def initialize(name)
    #this is an instance variable. It holds the state of the object.
    @name = name
  end


# this is an instance method
  def speak 
    "#{@name} says Arf!"
  end

#Getter method.
  def get_name
    @name
  end

#Seter method for set name
  def set_name=(name)
    @name = name
  end
end

sparky = GoodDog.new("Sparky")       # => "This object was initialized!"
# puts sparky
puts sparky.speak
fido = GoodDog.new("Fido")
# puts fido
puts fido.speak

puts sparky.get_name

sparky.set_name = "spartacus"

puts sparky.get_name
#no method error, method doesnt exist or is unavailable.
#Need to create a method to get this value.
puts sparky.name

