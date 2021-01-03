
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
      elsif board.update_board(input, player.symbol) == false
        puts "That space is taken!"
      else
        board.update_board(input, player.symbol)
        board.display_board
        break
      end
    end
  end

  def game_over(player, board)
    puts "Game over! #{player.name} is the winner!"
    puts "Play again? (Y/N)" 
    while input = gets.chomp.downcase
      if input == 'y'
        player.reset_players
        board.reset_board
        play_game
        break
      elsif input == 'n'
        puts "Thanks for playing!"
        exit
      else
        puts "Please enter y or n"
      end
    end
  end

  def tie(board, player)
    puts "It's a tie!"
    puts "Play again? (Y/N)" 
    while input = gets.chomp.downcase
      if input == 'y'
        player.reset_players
        board.reset_board
        play_game
        break
      elsif input == 'n'
        puts "Thanks for playing!"
        exit
      else
        puts "Please enter y or n"
      end 
    end
  end
end


    






