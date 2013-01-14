require 'debugger'

class WordChain

  def initialize
    create_dictionary
    @possible_combinations = {}
  end

  def adjacent_words(word)
    combinations = []
    @dictionary.select! { |dict| dict.length == word.length }
    i = 0
    while i <= (word.length - 1)
      check_word = word.dup
      ('a'..'z').each do |letter|
        check_word[i] = letter
        if @dictionary.include?(check_word)
          unless check_word == word
            combinations << check_word.dup
          end
        end
      end
      i += 1
    end
    combinations
  end

  def find_children(set)
    return_hash = {}
    set.each do |word, value|
      new_array = adjacent_words(word)
      new_array.each do |new_word|
        unless @possible_combinations.has_key?(new_word) || return_hash.has_key?(new_word) #|| new_word == @begin_word
          return_hash.merge!({new_word => word})
        end
      end
    end
    @possible_combinations.merge!(return_hash)
    p return_hash
    return_hash
  end

  def all_children(word, target)
    set = {word => nil}
    until @possible_combinations.has_key?(target)
      set = find_children(set)
    end
  end

  def find_target_word(word, target)
    @begin_word = word
    trail = [target]
    target_value = ''
    all_children(word, target)
    until target_value == @begin_word
      target_value = @possible_combinations[target]
      trail << target_value
      target = target_value
    end
    trail.reverse.join(" => ")
  end

  def create_dictionary
    @dictionary = []
    File.foreach("word_chains.txt") do |line|
      @dictionary << line.chomp
    end

    @dictionary
  end

end