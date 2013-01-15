class Hangman

  def initialize
    @dictionary = read_dictionary
  end

  def read_dictionary(filename="dictionary.txt")
    dictionary = []
    File.foreach(filename) do |word|
      dictionary << word.chomp
    end
    dictionary
  end

  def create_players
    puts "Who will be doing the guessing, human or robot?"
    gets.chomp == "human" ? @player1 = HumanPlayer.new : @player1 = ComputerPlayer.new
    puts "Who will be making up the word, human or robot?"
    gets.chomp == "human" ? @player2 = HumanPlayer.new : @player2 = ComputerPlayer.new
  end

  def run
    create_players
    @winning_word = @player2.choose_word
    while true

      board = @player2.show_board(@winning_word)
      puts board
      players_move = @player1.move(board)
      puts players_move
      @player2.checkmove(players_move)

      if @player2.game_won?
        puts "You win! Word as #{@winning_word}"
        break
      elsif @player2.game_lost?
        puts "You Lost!"
        break
      end

    end
    puts "Play again?"
    if gets.chomp == "Y"
      run
    end
  end


end



class HumanPlayer

  def show_board
  end

  def choose_word
    puts "What will the word be?"
    word = gets.chomp
  end

end

class ComputerPlayer

  def initialize
    @dictionary = read_dictionary
  end

  def read_dictionary(filename="dictionary.txt")
    dictionary = []
    File.foreach(filename) do |word|
      dictionary << word.chomp
    end
    dictionary
  end

  def choose_word
    @dictionary.sample
  end

end