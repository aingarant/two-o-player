# import Game, Player, Question classes.
require "./game"

# Begin new game
new_game = Game.new
puts "Math Game.. Start Playing"
puts "Hit any key to start."
gets.chomp
new_game.new_round

