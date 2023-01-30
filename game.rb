require './players'
require './questions'

# Create main game calcuation class
class Game

  # Instance variable setter/getter
  attr_accessor :current_player, :p1, :p2, :turn

  def initialize()
    @p1 = Player.new("Player 1")
    @p2 = Player.new("Player 2")
    @players = [@p1, @p2]
    @current_player = Player.new(@p1)
    @turn = 0
  end

  def new_round
    @question = Question.new()
    @question.question(@current_player.name)
    @current_player.answer = gets.chomp.to_i
    if @current_player.answer == @question.answer
      puts "Ding Ding Ding!"
      swap_turn
      puts "Bruhhhh!!! Seriously? No! It's #{@question.answer}"
      @current_player.lose_life
      swap_turn
    end
  end

  # Alternate player turns
  def swap_turn
    puts "P1: #{@p1.lives} of 3 lives remaining"
    puts "P2: #{@p2.lives} of 3 lives remaining"
    game_over?
    puts "----- NEW TURN -----"
    update_turn_number
    new_round
  end

  # Keep track of current round
  def update_turn_number
    @turn += 1
    @current_player = @players[@turn % 2]
  end

  def game_over?
    if @current_player.lives == 0
      update_turn_number
      puts "----- GAME OVER -----"
      puts "#{@current_player.name} is the winner after #{@turn} rounds!"
      puts "#{@current_player.name} remaining lives: #{@current_player.lives}"
      puts "----- GAME OVER -----"
      exit(0)
    end
  end
end