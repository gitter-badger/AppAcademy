def guessing_game

  answer = rand(100)
  guess = nil
  num_guesses = 0
  puts "Give me a number between 0 and 100"

  while guess != answer
    guess = gets.chomp.to_i

    if guess > answer
      puts "Try guessing a lower number."
    elsif guess < answer
      puts "Try guessing a higher number."
    end

    num_guesses += 1
    puts "You've guessed #{num_guesses} times."
  end

  puts "You are a genius!"
end

def file_shuffler
  puts "What is the name of the file?"
  filename = gets.chomp
  line_array = []

  File.foreach(filename) do |line|
    line_array << line
  end

  line_array = line_array.shuffle

  file = File.new("#{filename}-shuffled.txt", "w")
  line_array.each do |x|
    file.puts x
  end
  file.close
end

#this was just for debugging, but it's pretty useful.
def what_dir
  puts Dir.pwd
end