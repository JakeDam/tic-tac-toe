class Board
  WIN_COMBOS = [
    [[0, 0], [0, 1], [0, 2]], 
    [[1, 0], [1, 1], [1, 2]],
    [[2, 0], [2, 1], [2, 2]],
    [[0, 0], [1, 0], [2, 0]],
    [[0, 1], [1, 1], [2, 1]], 
    [[0, 2], [1, 2], [2, 2]],
    [[0, 0], [1, 1], [2, 2]], 
    [[0, 2], [1, 1], [2, 0]]
  ]
  @@board_array = [[1, 2, 3], [4, 5, 6], [7, 8, 9]]

  private

  def update_array_value(a, b, input)
    @@board_array[a][b] = input
  end

  public 

	def display_board
		@@board_array.each do |row|
      print "#{row[0]} | #{row[1]} | #{row[2]}"
      print "\n"
      if row != @@board_array[2]
        puts "----------"
      end
		end
  end

  def update_board(input, symbol)
    @@board_array.each_with_index do |row, row_index|
      row.each_with_index do |cell, cell_index|
        if input == cell
          update_array_value(row_index, cell_index, symbol)
        end
      end
    end
  end

  def winner?
    #TO DO
  end




end
		