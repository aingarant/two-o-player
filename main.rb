# Create main game calcuation class
class Calculate
  def initialize
    number1
    number2
    answer = number1 operation number2
  end

  def question(player)
    puts "#{player}: What is #{number1} #{operation} #{number2}?"
  end

  def validate(player_input)
    answer == player_input
  end
end

# Create class to define the player (player name)
class Player
  def initialize(name)
  end
end

# Create class to ask the question to player
class Question
  def initialize
  end
end



# Begin new game
new_game = Calculate.new('New Game')