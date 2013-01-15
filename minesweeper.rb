class Square
	attr_reader :bomb
	attr_accessor :neighbors

	def initialize(bomb = false)
		@bomb = bomb
		@display_token = '*'
		@neighbors = []
	end

	def bomb?
		@bomb
	end

	def reveal_neighbors
		if self.bomb?
			return true
		else
			near_bombs = @neighbors.select do |neighbor|
				neighbor.nil? ? false : reveal_neighbors(neighbor)==true
			end
			@display_token = near_bombs.size>0 ? near_bombs.size.to_s : ' '
			return false
		end
	end
end

class Gameboard
	attr_reader :gameboard

	def initialize(board_size, number_of_mines)
		@board_size, @mine_count = board_size, number_of_mines
		@gameboard = Array.new(board_size, Array.new(board_size,nil))
	end

	def build_board
		# first put a square in each spot
		# @gameboard.map! do |row|
		# 	row.map! do |column|
		# 		column = Square.new
		# 	end
		# end
		@gameboard.each_with_index do |row, y|
			row.each_with_index do |square, x|
				puts "#{y},#{x}"
				@gameboard[x][y]= Square.new
			end
		end
		# then set each square's neighbors
		@gameboard.each_with_index do |row, y|
			row.each_with_index do |square, x|
				set_neighbors(square, y, x)
			end
		end
		puts "done"
	end

	def set_neighbors(square, y, x)
		# for each of the 8 surrounding position, check to see if it
		# falls inside the board. if it does, add the square at that
		# position to the current square's neighbors array
		#count = 0
		[[-1,-1],[0,-1],[1,-1],[1,0],[1,1],[0,1],[-1,1],[-1,0]].each do |cords|
			#print count
			#count += 1
			next if (y+cords[0] <0 || y+cords[0] == @board_size ||
					x+cords[1] <0 || x+cords[1] == @board_size)
			square.neighbors << @gameboard[y+cords[0]][x+cords[1]]
			#p square.neighbors.size
		end
		#square.neighbors.uniq!
		#puts
	end
end