# class ClassName
#   def initialize
    
#   end
# end

module Speak
  def speak(sound)
    puts "#{sound}"
  end
end

class GoodDog
  include Speak
end

class HumanBeing
  include Speak
end

sparky = GoodDog.new
sparky.speak("Arf!")        # => Arf!
puts sparky
bob = HumanBeing.new
bob.speak("Hello!")         # => Hello!
puts bob


puts "---GoodDog ancestors---"
puts GoodDog.ancestors
puts ''
puts "---HumanBeing ancestors---"
puts HumanBeing.ancestors