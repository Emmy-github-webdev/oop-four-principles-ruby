require "./animal.rb"

class Dog < Animal
  def initialize(color, name = "Unkown")
    super("dog", 4, name)
    @color = color
  end
end