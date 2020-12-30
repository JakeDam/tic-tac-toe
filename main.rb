require_relative 'interface.rb' 
require_relative 'player.rb'
require_relative 'game.rb'
require_relative 'board.rb'

test_board = Board.new
test_board.update_board(1, "X")
test_board.update_board(2, "X")
test_board.display_board
p test_board.winner?("X")







