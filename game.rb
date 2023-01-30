require './players'
require './questions'

# Create main game calcuation class
class Game

  # Instance variable setter/getter
  attr_accessor :current_player

  # Initializes with random player.
  def initialize
    @current_player = ["player1", "player2"].sample
  end

  # Alternate player turns
  def swap_turn
    if @current_player == "player1"
      @current_player = "player2"
    else
      @current_player = "player1"
    end
  end
end