class Hangman

  def initialize
    @dictionary = read_dictionary
    @winning_word = ""
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

  def run
    @winning_word = choose_word
    create_players
    while true
      input = @player1.move
      if @player2.game_won?
        puts "You win! Word as #{@winning_word}"
      elsif @player2.game_lost?
        puts "You Lost!"
      end
    end
  end


end



class HumanPlayer
end

class ComputerPlayer
end