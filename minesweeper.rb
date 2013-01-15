class Square
	attr_accessor :neighbors, :display_token, :bomb

	def initialize(bomb = false)
		@bomb = bomb
		@display_token = '*'
		@neighbors = []
	end

	def bomb?
		@bomb
	end
end

class Gameboard
	attr_reader :gameboard

	def initialize(board_size, number_of_mines)
		@board_size, @mine_count = board_size, number_of_mines
		@gameboard = Array.new(board_size) {Array.new(board_size) {nil}}
		@checked_squares = []
		@bomb_locs = []

		build_board
		create_bombs
	end

	def play
		while true
			print_board
			user_move = interface
			pos = user_move[1..-1].strip.split(',').map { |el| el.to_i }
			case user_move[0]
			when 'r'
				reveal_neighbors(@gameboard[pos[0]][pos[1]])
			when 'f'
				flag(@gameboard[pos[0]][pos[1]])
			else
				puts "Not a valid command, try again."
				redo
			end

		end
	end

	def flag(square)
		square.display_token = 'F'
	end

	def won?
		(@checked_squares+@bomb_locs).size == board_size**2
	end

	def interface
		puts "[F to flag, R to reveal] (row, column)"
		puts "Choose a move (ex. r 0,2):"
		print "> "
		gets.chomp.downcase
	end

	def build_board
		# first put a square in each spot
		@gameboard.map! do |row|
			row.map! do |column|
				column = Square.new
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

	def create_bombs
		@mine_count.times do
			square = @gameboard.sample.sample
			redo if @bomb_locs.include?(square)
			square.bomb = true
			square.display_token = "B"
			@bomb_locs << square
		end
	end

	def set_neighbors(square, y, x)
		# for each of the 8 surrounding position, check to see if it
		# falls inside the board. if it does, add the square at that
		# position to the current square's neighbors array
		[[-1,-1],[0,-1],[1,-1],[1,0],[1,1],[0,1],[-1,1],[-1,0]].each do |cords|
			next if (y+cords[0] <0 || y+cords[0] == @board_size ||
					x+cords[1] <0 || x+cords[1] == @board_size)
			square.neighbors << @gameboard[y+cords[0]][x+cords[1]]
		end
	end

	def print_board
		puts "  #{(0...@board_size).to_a.join(' ')}"
		(0...@board_size).each do |y|
			print "#{y} "
			(0...@board_size).each do |x|
				print "#{@gameboard[y][x].display_token} "
			end
			puts
		end
	end

	def reveal_neighbors(square)
		if square.bomb?
			return true
		else
			@checked_squares << square
			near_bombs = 0
			square.neighbors.each do |neighbor|
				if neighbor.bomb?
					near_bombs+=1
				end
			end
			if near_bombs == 0
				square.neighbors.each do |neighbor|
					unless (@checked_squares.include?(neighbor) ||
						neighbor.display_token=="F")
						reveal_neighbors(neighbor)
					end
				end
			end

			square.display_token = near_bombs > 0 ? near_bombs.to_s : ' '
			return false
		end
	end
end

# run script
g = Gameboard.new(9,10)
g.play