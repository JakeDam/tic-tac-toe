# frozen_string_literal: true

# Houses the main game methods
class Game
  include Interface

  def initialize(player1, player2, board)
    @player1 = player1
    @player2 = player2
    @board = board
  end

  def inspect_input(input, player, board)
    prompt(player)
    if input.between?(1, 9) == false
      puts 'Please enter a valid number.'
    elsif board.update_board(input, player.symbol) == false
      puts 'That space is taken!'
    else
      board.update_board(input, player.symbol)
      board.display_board
    end
  end

  def play_round(player, board)
    prompt(player)
    while (input = gets.chomp.to_i)
      inspect_input(input, player, board)
    end
  end

  def start_new_game(player, board)
    player.reset_players
    board.reset_board
    play_game
  end

  def exit_game
    puts 'Thanks for playing!'
    exit
  end

  def new_or_exit(input, player, board)
    case input
    when 'y'
      start_new_game(player, board)
    when 'n'
      exit_game
    else
      puts 'Please enter y or n'
    end
  end

  def game_over(player, board)
    game_over_message(player)
    while (input = gets.chomp.downcase)
      new_or_exit(input, player, board)
    end
  end

  def tie(board, player)
    tie_message
    while (input = gets.chomp.downcase)
      new_or_exit(input, player, board)
    end
  end
end
