require "./animal.rb"
require "./foods.rb"

class Dog < Animal
  def initialize(color, name = "Unkown")
    super("dog", 4, name)
    @color = color
    @liked_food = DogFood.new()
  end

  def bring_a_stick
  if @type == "dog"
    "Here is your stick: -------"
    end
  end
end

animal_1 = Dog.new("Black", "Rex")
puts animal_1.bring_a_stick()
animal_1.remove_leg()
puts animal_1.number_of_legs
puts animal_1.likes_food?("meat")
puts animal_1.likes_food?("bug")
