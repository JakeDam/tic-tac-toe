require_relative 'interface'
require_relative 'player'
require_relative 'game'
require_relative 'board'
include Interface

def play_game
  greeting
  board = Board.new
  player1 = Player.new('Player 1', 1)
  player2 = Player.new('Player 2', 2)

  player1.name = player1.get_player(player1)
  player2.name = player2.get_player(player2)

  board.display_board

  game = Game.new(player1, player2, board)

  loop do
    game.play_round(player1, board)
    if board.winner?(player1.symbol)
      game.game_over(player1, board)
    elsif board.board_full?
      game.tie(board, player2)
    end
    game.play_round(player2, board)
    if board.winner?(player2.symbol)
      game.game_over(player2, board)
    elsif board.board_full?
      game.tie(board, player2)
    end
  end
end

play_game
