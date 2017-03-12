# class Animal
#   attr_accessor :name

#   def initialize(n)
#     self.name = n
#   end

#   def speak
#     "Hello!"
#   end
# end

# class GoodDog < Animal

#   def initialize(color)
#     super
#     @color = color
#   end

#   #overriding speak from Animals.
#   def speak
#     # "#{self.name} says arf!"
#     super + " from GoodDog class"
#   end
# end

# class Cat < Animal
# end

# class BadDog < Animal
#   def initialize(age, name)
#     super(name)
#     @age = age
#   end
# end

# belly = BadDog.new(2, "bear")  

# puts belly.inspect
# bruno = GoodDog.new("brown")
# puts bruno.inspect

# sparky = GoodDog.new("Sparky")
# paws = Cat.new

# puts sparky.speak           # => Hello!
# puts paws.speak             # => Hello!

module Swimmable
  def swim
    "I'm swimming!"
  end
end

module Climbable
  def climb
    "I can climb"
  end
end

class Animal; end

class Fish < Animal
  include Swimmable         # mixing in Swimmable module
end

class Mammal < Animal
end

class Cat < Mammal
end

class Dog < Mammal
  include Swimmable         # mixing in Swimmable module
  include Climbable
end

sparky = Dog.new
neemo  = Fish.new
paws   = Cat.new
puts Dog.ancestors
puts sparky.swim                 # => I'm swimming!
puts neemo.swim                  # => I'm swimming!
# puts paws.swim  