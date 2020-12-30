class Board
	@@board_array = [[1, 2, 3], [4, 5, 6], [7, 8, 9]]

	def display_board
		@@board_array.each do |row|
      print "#{row[0]} | #{row[1]} | #{row[2]}"
      print "\n"
      if row != @@board_array[2]
        puts "----------"
      end
		end
  end

end
		