require "./animal.rb"

class Dog < Animal
  def initialize(color, name = "Unkown")
    super("dog", 4, name)
    @color = color
  end

  def bring_a_stick
  if @type == "dog"
    "Here is your stick: -------"
    end
  end
end

animal_1 = Dog.new("Black", "Rex")
puts animal_1.bring_a_stick()