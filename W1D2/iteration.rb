def special_nums(array)
  array.each do |el|
    if el > 250 && el % 7 == 0
      puts el
    end
  end
end

def factors
  number = 1

  while number <= 100
    
    factor = 1
    factors = []
    while factor < number
      if number % factor == 0
        factors << factor
      end
      factor += 1
    end

  puts "The factors of #{factor} are #{factors}"
  number += 1
  end

end

def sorty(numbers)
  isdif = false

    numbers[0...-1].each_with_index do |val,i|
      if numbers[i] > numbers[i + 1]
        numbers[i], numbers[i + 1] = numbers[i + 1], numbers[i]
        isdif = true
      end
    end

  sorty(numbers) if isdif 

  numbers
end

# def substrings(string)
#   letter_count = string.length
#   substrings = []

#     while letter_count >= 1
#       i = letter_count

#       while i >= 0
#         if !substrings.include?(string[i..letter_count])
#           substrings << string[i..letter_count]
#           if substrings.count % 1000 == 0
#             puts "found #{substrings.count} substrings."
#           end
#           letter_count -= 1
#         end
#       i -= 1
#       end
#     end
#     substrings
# end

require 'debugger'

def substrings(string)
  substrings = []
  i = 0
    while i <= string.length
      max_length = 28
      while max_length >= 0
        if !substrings.include?(string[i..(i + max_length)])
          substrings << string[i..(i + max_length)]
          if substrings.count % 1000 == 0
            puts "found #{substrings.count} substrings."
          end
        end
        max_length -= 1
      end
      i += 1
    end

  substrings
end

def load_dictionary(filename="2of12inf.txt")
  dictionary = []
  File.foreach(filename) do |line|
    dictionary << line.chomp
  end
  dictionary
end

def find_words(string)
  time_in = Time.now
  substrings = substrings(string)
  dictionary = load_dictionary
  good_words = []
  words_included = substrings.length
  words_checked = 0

  substrings.each do |el|
    if dictionary.include?(el)
      good_words << el
    end
    if words_checked % 100 == 0 && words_checked > 100
      percentage = ((words_checked.to_f / words_included) * 100).to_i
      puts "Checked #{words_checked} of #{words_included} potential words. #{percentage}% complete."
    end
    words_checked += 1
  end

  time_taken = Time.now - time_in
  puts "The words were: #{good_words.sort}, and this took #{time_taken.to_i} seconds."
end

def crazy_string(string_length)
  crazy_string = ""

  string_length.times do
    crazy_string << 97.+(rand(26)).chr
  end

  crazy_string
end