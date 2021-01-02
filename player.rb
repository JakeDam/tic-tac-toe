class Player 
  attr_accessor :name, :player_number, :symbol 
  @@number_of_players = 0
	
  def initialize(name)
    @name = name
    @@number_of_players += 1
    @player_number = @@number_of_players
    if @player_number == 1
      symbol = "X"
    else
      symbol = "O"
    end
    @symbol = symbol
  end

  def reset_players
    @@number_of_players = 0
  end

end


