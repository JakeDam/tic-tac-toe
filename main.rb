require_relative 'interface.rb' 
require_relative 'player.rb'
require_relative 'game.rb'
require_relative 'board.rb'


test_board = Board.new

test_board.display_board
jake = Player.new("Jake")
mike = Player.new("Mike")

puts jake.player_number
puts mike.player_number
puts jake.symbol
puts mike.symbol

