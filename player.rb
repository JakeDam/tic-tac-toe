class Player 
	@@number_of_players = 0

	def initialize(name)
		@name = name
		@@number_of_players += 1
		@player_number = @@number_of_players
	end

end


