module Interface
  def greeting 
    puts "Let's play Tic-Tac-Toe!"
  end

  def get_player(player)
    puts "Enter name for Player #{player.player_number}."
    name = gets.chomp
  end

  def prompt(player)
    puts "#{player.name}, choose a space to place an #{player.symbol}."
  end
end
