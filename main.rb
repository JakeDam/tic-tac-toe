require_relative 'interface.rb' 
require_relative 'player.rb'
require_relative 'game.rb'
require_relative 'board.rb'
include Interface 

def play_game
  greeting
  board = Board.new
  player1 = Player.new("Player 1")
  player2 = Player.new("Player 2")

  player1.name = player1.get_player(player1)
  player2.name = player2.get_player(player2)

  board.display_board
end

play_game








