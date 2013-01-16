#!/usr/bin/env ruby
require 'YAML'

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
	attr_reader :time

	def initialize(board_size, number_of_mines, player_name)
		@board_size, @mine_count = board_size, number_of_mines
		@player_name = player_name
		@gameboard = Array.new(board_size) {Array.new(board_size) {nil}}
		@checked_squares = []
		@bomb_locs = []
		@time = 0
		build_board
		create_bombs
	end

	def play
		start_time = Time.now
		while true
			print_board
			user_move = get_input
			pos = user_move[1..-1].strip.split(',').map { |el| el.to_i }
			if @checked_squares.include?(@gameboard[pos[0]][pos[1]])
				puts "Checked already, try again."
				redo
			end
			case user_move[0]
			when 'r'
				if @gameboard[pos[0]][pos[1]].bomb?
					puts "Sorry, you hit a bomb."
					return false
				end
				reveal_neighbors(@gameboard[pos[0]][pos[1]])
			when 'f'
				flag(@gameboard[pos[0]][pos[1]])
			when 's'
				@time = Time.now - start_time
				file = File.open("#{@player_name}_savegame",'w')
				file.write(self.to_yaml)
				file.close
			when 'q'
				return
			else
				puts "Not a valid command, try again."
				redo
			end
			if won
				puts "You won! Good job!"
				return true
			end
		end
	end

	private

	def flag(square)
		square.display_token = 'F'
	end

	def won
		(@checked_squares+@bomb_locs).size == @board_size**2
	end

	def get_input
		puts "[F to flag, R to reveal, S to save, Q to quit] (row, column)"
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
	end

	def create_bombs
		@mine_count.times do
			square = @gameboard.sample.sample
			redo if @bomb_locs.include?(square)
			square.bomb = true
			square.display_token = "B" # used for testing
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
		print "  "
		(0...@board_size).each do |column_label|
			if @board_size > 10
				spaces = column_label < 10 ? '  ' : ' '
			else
				spaces = ' '
			end
			print "#{spaces}#{column_label}"
		end
		puts
		print "  "
		(0...@board_size).each do |column_label|
			if @board_size > 10
				spaces = column_label < 10 ? '  ' : ' '
			else
				spaces = ' '
			end
			print "#{spaces}-"
		end
		puts
		(0...@board_size).each do |y|
			print " " if y < 10 && @board_size > 10
			print "#{y}| "
			(0...@board_size).each do |x|
				spaces = @board_size > 10 ? '  ' : ' '
				print "#{@gameboard[y][x].display_token}#{spaces}"
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

def get_name
	puts "What's your name?"
	gets.chomp
end

def load_game(name)
	puts "Would you like to load your previous save? (y/n)"
	answer = gets.chomp.downcase[0]
	if answer == 'y'
		begin
			game_state = YAML::load(File.read("#{name}_savegame"))
		rescue Errno::ENOENT
			puts "Savegame doesn't exist, continuing without it.\n"
			game_state = Gameboard.new(9,10,name)
		end
	else
		game_state = Gameboard.new(9,10,name)
	end
	game_state
end

def scoreboard(time, name)
	begin
		score_board = YAML::load(File.read('scoreboard'))
	rescue Errno::ENOENT
		score_board = []
	end
	score_board += [{:player => name, :time => time}]
	score_board.sort! { |a,b| a[:time] <=> b[:time]}
	score_board = score_board[0...10]
	file = File.open('scoreboard','w')
	file.write(score_board.to_yaml)
	file.close
	puts "\nScoreboard:"
	puts "-----------"
	score_board.each do |score|
		puts "#{score[:player]} : #{score[:time]} seconds."
	end
	puts
end

if __FILE__ == $PROGRAM_NAME
	name = get_name
	game = load_game(name)

	time = Time.now
	if game.play
		time = Time.now - time + game.time
		scoreboard(time, name)
	end
end