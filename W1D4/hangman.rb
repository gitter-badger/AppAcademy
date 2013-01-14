class Hangman

  def initialize
    @guessed_letters = ""
    @remaining_guesses = 5
  end

  def play
    initialize

    puts "How many humans playing (1, 2 or 0)?"
    player = gets.chomp
    player_select(player)

    @selected_word = @player2.pick_word
    letter_count = @selected_word.length

    while true
      if loss?
        puts "PLAYER ONE LOSES!"
        puts "The word was #{@selected_word}"
        break
      elsif victory?
        puts "PLAYER ONE WINS! The word is #{@selected_word}"
        break
      else
        secret_word = word_constructor
        puts "Secret word:" + secret_word
        puts "Guessed letters: #{@guessed_letters}"
        puts "Remaining guesses: #{@remaining_guesses}"
        @player_guess = @player1.guess(secret_word)
        puts "Player 1 guessed: #{@player_guess}"
        puts "--------------------------------"
        if @player_guess.length == 1
          kill_guesses(@player_guess)
          @guessed_letters << @player_guess
        end
      end
    end

  end

  def loss?
    @remaining_guesses == 0
  end

  def player_select(players)
    case players.to_i
    when 2
      @player1 = HumanPlayer.new
      @player2 = HumanPlayer.new
    when 1
      @player1 = HumanPlayer.new
      @player2 = ComputerPlayer.new
    else
      @player1 = ComputerPlayer.new
      @player2 = ComputerPlayer.new
    end
  end

  def kill_guesses(guess)
    if !@selected_word.include?(guess)
      @remaining_guesses -= 1
    end
  end

  def victory?
    [word_constructor, @player_guess].include?(@selected_word)
  end

  def word_constructor
    secret_word = ""
    @selected_word.each_char do |letter|
      if @guessed_letters.include?(letter)
        secret_word << letter
      else
        secret_word << "_"
      end
    end
    secret_word
  end

end

class HumanPlayer
  def guess(secret_word)
    my_guess = gets.chomp
  end

  def pick_word
    puts "Write a word for the computer to guess!"
    word = gets.chomp
  end

end

class ComputerPlayer

  attr_accessor :dictionary, :guessed_letters

  def initialize
    @filename = "2of12inf.txt"
    @guessed_letters = ""
    create_dictionary
  end

  def guess(secret_word)
      prune_for_length(secret_word)
      prune_for_secret(secret_word)
    if @dictionary.length == 1
      dictionary[0]
    else
      #prune_for_guessed_letters
      letter_counter
      #puts "my dictionary is #{@dictionary}"
      #puts "the letter count is #{@letter_count}"
      selective_guess
    end
  end

  def selective_guess
    best_letter = @letter_count[0][0]
    if @guessed_letters.include?(best_letter)
      @letter_count.shift
      selective_guess
    else
      @guessed_letters << best_letter
      best_letter
    end
  end

  def letter_counter
    @letter_count = {}
    @dictionary.each do |word|
      word.each_char do |char|
        if @letter_count[char] == nil
          @letter_count[char] = 1
        else
          @letter_count[char] += 1
        end
      end
    end
    @letter_count = @letter_count.sort_by {|key, value| -value}
  end

  def prune_for_length(secret_word)
    pruned_dictionary = []
    @dictionary.each do |word|
      if secret_word.length == word.length
        pruned_dictionary << word
      end
    end
    @dictionary = pruned_dictionary
  end


  def prune_for_secret(secret_word)
    pruned_dictionary = []
    @dictionary.each do |word|
      i = 0
      mismatch = false
      secret_word.each_char do |char|
        if char =~ /[a-z]/
          if word[i] != char
            mismatch = true
          end
        end
        i += 1
      end
      if mismatch == false
        pruned_dictionary << word
      end
    end
    @dictionary = pruned_dictionary
  end

  def prune_for_guessed_letters
    pruned_dictionary = []
    @dictionary.each do |word|
      included = false
      @guessed_letters.each_char do |letter|
        if !word.include?(letter)
          included = true
        end
      end
      if included == false
        pruned_dictionary << word
      end
    end
    @dictionary = pruned_dictionary
  end

  def create_dictionary
    dictionary = []
    File.foreach(@filename) do |line|
      dictionary << line.chomp
    end

    @dictionary = dictionary
  end

  def pick_word
    dictionary = []
    File.foreach(@filename) do |line|
      dictionary << line
    end
    entries = dictionary.length

    selected_word = dictionary[rand(entries)].chomp

    selected_word
  end

end
