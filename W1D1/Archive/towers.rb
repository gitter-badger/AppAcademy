class Towers

  def initialize
    @tower1 = [4,3,2,1]
    @tower2 = []
    @tower3 = []
  end

  def mover(source, destination)
    destination = translate_input(destination)
    destination << source.pop
  end

  def run
    while @tower3 != [4,3,2,1]
      puts "This is the current playing field:"
      puts "Tower One: #{@tower1}"
      puts "Tower Two: #{@tower2}"
      puts "Tower Three: #{@tower3}"
      puts "Take the top disc from which tower? (1, 2 or 3)"
      good_source
      puts "And put it where? (1, 2 or 3)"
      destination = gets.chomp
      mover(@source, destination)
    end
    puts "You Win!"
  end

  def good_source
    source = gets.chomp
    source = translate_input(source)
      if source.empty?
        puts "That tower is empty, try again!"
        good_source
      else
        @source = source
      end
  end

  def translate_input(input)
    if input == "1"
      @tower1
    elsif input == "2"
      @tower2
    elsif input == "3"
      @tower3
    else
      raise "Follow directions better!"
    end
  end


end

game = Towers.new
game.run