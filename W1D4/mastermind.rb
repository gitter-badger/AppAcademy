class Mastermind

	def initialize
		@game_board = create_board
		@exact_guesses = 0
		@close_guesses = 0
		@guess = ""
		@remaining_guesses = 10
	end

	def play
		initialize

		while true
			if @remaining_guesses = 0
				puts "LOSE!"
				break
			elsif victory?
				puts "WIN!"
				break
			else
				puts "You have #{@remaining_guesses} more guesses!"
				puts "Type 4 letters from the letters RGBYOP"
				@guess = gets.chomp

				guess_fidelity(@guess)

				puts "You have #{@exact_guesses} exact guesses and #{@close_guesses} close guesses."
				@exact_guesses = 0
				@close_guesses = 0
				@remaining_guesses -= 1
			end
		end

	end

	def victory?
		@guess == @game_board
	end

	def guess_fidelity(guess)
			dup_board = @game_board.dup
			i = 0
			guess.each_char do |char|
				if is_exact?(char, i, dup_board)
					@exact_guesses += 1
					dup_board[i] = "X"
				end
				i += 1
			end
			i = 0
			guess.each_char do |char|
				if is_close?(char, dup_board)
					@close_guesses += 1
					dup_board[i] = "X"
				end
				i += 1
			end
	end


	def create_board
		game_board = ""
		colors = "RGBYOP"
		4.times do
			game_board << colors[rand(6)]
		end
		game_board
	end

	def is_close?(char, dup_board)
		if dup_board.include?(char)
			return true
		end
	end

	def is_exact?(char, i, dup_board)
		if char == dup_board[i]
			return true
		end
	end

end