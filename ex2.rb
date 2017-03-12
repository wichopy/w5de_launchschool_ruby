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

  def name                  # This was renamed from "get_name"
    @name
  end

  def name=(n)              # This was renamed from "set_name="
    @name = n
  end
end

sparky = GoodDog.new("Sparky")       # => "This object was initialized!"
# puts sparky
puts sparky.speak
fido = GoodDog.new("Fido")
# puts fido
puts fido.speak

puts sparky.name

sparky.name = "spartacus"

puts sparky.name


