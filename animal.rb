require "./remover.rb"
require "./foods.rb"

class Animal
  attr_reader :owner
  attr_accessor :name #create both setter and getter for name
  def initialize(type, number_of_legs, name = "Unkown")
    @id = Random.rand(1..1000)
    @name = name
    @number_of_legs = number_of_legs
    @type = type
    @liked_food = NoFood.new()
  end

  # Getter and Setter
  def id
    @id
  end

  def type
    @type
  end

  def number_of_legs
    @number_of_legs
  end

  def remove_leg
    remover = Remover.new()
    @number_of_legs = remover.decrease(@number_of_legs)
  end

  def speak
    if @type == "dog"
      "Woof, woof"
    elsif @type == "spider"
      "..."
    end
  end

  def likes_food?(food)
    @liked_food.is_liked?(food)
  end

  def owner=(owner)
    @owner = owner
    owner.animals.push(self) unless owner.animals.include?(self)
  end
end

animal_1 = Animal.new("dog", 4, "Rex")
animal_1.id
animal_1.type
animal_1.name
animal_1.number_of_legs

animal_2 = Animal.new("spider", 8)
animal_2.name
animal_2.name = "Fluffy"
animal_2.name

puts animal_1.id
puts animal_1.type
puts animal_1.name
puts animal_1.number_of_legs

puts animal_2.id
puts animal_2.type
puts animal_2.name
puts animal_2.number_of_legs

puts animal_1.speak()
puts animal_2.speak()

