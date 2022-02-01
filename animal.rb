class Animal
  attr_accessor :name #create both setter and getter
  def initialize(type, number_of_legs, name = "Unkown")
    @id = Random.rand(1..1000)
    @name = name
    @number_of_legs = number_of_legs
    @type = type
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

end

animal_1 = Animal.new("dog", 4, "Rex")
animal_1.id
animal_1.type
animal_1.name
animal_1.number_of_legs

animal_2 = Animal.new("cat", 8)
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
