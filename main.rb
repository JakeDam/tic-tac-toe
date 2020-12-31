require_relative 'interface.rb' 
require_relative 'player.rb'
require_relative 'game.rb'
require_relative 'board.rb'

test_board = Board.new
test_board.update_board(1, "X")
test_board.update_board(2, "X")
test_board.update_board(3, "X")
test_board.update_board(4, "X")
test_board.update_board(5, "X")
test_board.update_board(6, "X")
test_board.update_board(7, "X")
test_board.update_board(8, "X")
test_board.display_board
p test_board.board_full?







