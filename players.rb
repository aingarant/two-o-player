# Create class to define the player (with name, 3 lives, and the answer prompt, method to loose_life to reduce lives for wrong answer.)
class Player

  attr_accessor :name, :lives, :answer

  def initialize(name)
    @name = name
    @lives = 3
    @answer = ""
  end

  def lose_life
    @lives -= 1
  end

end