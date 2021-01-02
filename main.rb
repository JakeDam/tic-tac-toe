require_relative 'interface.rb' 
require_relative 'player.rb'
require_relative 'game.rb'
require_relative 'board.rb'

test_board = Board.new
player_1 = Player.new("Jake")
player_2 = Player.new("Ashley")
game = Game.new(player_1, player_2, test_board)

test_board.display_board
game.play_round(player_1, test_board)
test_board.display_board








