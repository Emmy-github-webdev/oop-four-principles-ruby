require "./animal.rb"

class spider
  def initialize(web_strength_level, name = "Unkown")
    super("spider", 8, name)
    @web_strength_level = web_strength_level
  end
end