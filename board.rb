class Board
	@@board_array = [[1, 2, 3], [4, 5, 6], [7, 8, 9]]

	def display_board
		@@board_array.each do |row|
			row.each { |cell| print "#{cell} | "}
		end
	end
end
		