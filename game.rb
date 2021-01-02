class Game 
  include Interface

  def initialize(player1, player2, board)
    @player1 = player1
    @player2 = player2
    @board = board
  end

  def play_round(player, board)
    prompt(player)
    while input = gets.chomp.to_i
      if input.between?(1,9) == false 
        puts "Please enter a valid number."
      else  
        break
      end
    end
    board.update_board(input, player.symbol)
  end

end


    






