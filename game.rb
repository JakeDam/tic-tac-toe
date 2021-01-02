class Game 
  include Interface

  def initialize(player1, player2, board)
    @player1 = player1
    @player2 = player2
    @board = board
  end

  def play_round(player)
    prompt(player)
    while input = gets.chomp.to_i
      if input.between?(1,9) == False 
        puts "Please enter a valid number."

        #TO DO
end


    






