require "./animal.rb"
require "./foods"

class Spider < Animal
  def initialize(web_strength_level, name = "Unkown")
    super("spider", 8, name)
    @web_strength_level = web_strength_level
    @liked_food = SpiderFood.new()
  end

  def make_a_web
    if @type == "spider"
      "www"
    end
  end
end

animal_2 = Spider.new(80, "Wilma")
puts animal_2.make_a_web()
animal_2.remove_leg()
puts animal_2.number_of_legs
puts animal_2.likes_food?("meat")
puts animal_2.likes_food?("bug")