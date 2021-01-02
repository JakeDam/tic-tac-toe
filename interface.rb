module Interface
  def greeting 
    puts "Let's play Tic-Tac-Toe!"
  end

  def prompt(player)
    puts "#{player.name} choose a space to place an #{player.symbol}."
  end
end
