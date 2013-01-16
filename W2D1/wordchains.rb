class Wordchain

  def initialize
    build_dictionary
  end

  def adjacent_words(word, candidates)
    adjacent_words = []
    word.length.times do |index|
      ("a".."z").each do |letter|
        new_word = word.dup
        new_word[index] = letter
        adjacent_words << new_word if candidates.include?(new_word)
      end
    end
    adjacent_words
  end

  def find_target(word, target)
    raise if target.length != word.length
    @candidates = @dictionary.select {|dict_word| word.length == dict_word.length}
    @full_tree = {word => nil}

    until @full_tree.has_key?(target)
      find_next_level(@full_tree)
    end

    build_trail(word, target)
  end

  def build_trail(word, target)
    target_value = ""
    trail = [target]

    until target_value == word
      target_value = @full_tree[target]
      trail << target_value
      target = target_value
    end
    trail.reverse.join(" => ")
  end


  def find_next_level(set)
    return_hash = {}
    set.each do |word, value|
      new_array = adjacent_words(word, @candidates)
      new_array.each do |new_word|
        unless return_hash.has_key?(new_word)
          return_hash.merge!({new_word => word})
          @candidates -= [new_word]
        end
      end
    end
    if return_hash.empty?
      raise "The goggles do nothing."
    end
    puts return_hash
    @full_tree.merge!(return_hash)
  end


  def build_dictionary(filename="dictionary.txt")
    dictionary = []
    File.foreach(filename) do |word|
      dictionary << word.chomp
    end
    @dictionary = dictionary
  end
end