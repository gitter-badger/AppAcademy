class HumanPlayer

  def initialize(game)
    @game = game
  end

  def move
    move_array = []
    puts "which row?"
    move_array << gets.chomp.to_i
    puts "which column?"
    move_array << gets.chomp.to_i
    if @game.square_empty?(move_array)
      move_array
    else
      "That spot isn't empty, idiot."
      self.move
    end
  end
end

class ComputerPlayer

  def initialize(game)
    @game = game
  end

  def move
    move_array = []
    move_array << rand(3)
    move_array << rand(3)
    if @game.square_empty?(move_array)
      move_array
    else
      self.move
    end
  end
end

class Game

  def initialize
    @rows = [
      ["", "", ""],
      ["", "", ""],
      ["", "", ""]
    ]
  end

  def columns
    @columns = [
      [@rows[0][0], @rows[1][0], @rows[2][0]],
      [@rows[0][1], @rows[1][1], @rows[2][1]],
      [@rows[0][2], @rows[1][2], @rows[2][2]]
    ]
  end

  def crosses
    @crosses = [
      [@rows[0][0], @rows[1][1], @rows[2][2]],
      [@rows[2][0], @rows[1][1], @rows[0][2]]
    ]
  end

  def row_same?(array)
    array.all? do |el|
      array[0] == el
    end
  end

  def square_empty?(move)
    row = move[0]
    column = move[1]
    if @rows[row][column] == ""
      true
    else
      false
    end
  end

  def victory?
    columns
    crosses
    @columns.each do |array|
      if row_same?(array) && array[0] != ""
        return true
        break
      end
    end

    @rows.each do |array|
      if row_same?(array) && array[0] != ""
        return true
        break
      end
    end

    @crosses.each do |array|
      if row_same?(array) && array[0] != ""
        return true
        break
      end
    end
    return false
  end

  def player1_move(move)
    row = move[0]
    column = move[1]
    if @rows[row][column] == ""
      @rows[row][column] = "X"
    else
      puts "Bad move, bonzo."
    end
  end

  def player2_move(move)
    row = move[0]
    column = move[1]
    if @rows[row][column] == ""
      @rows[row][column] = "0"
    else
      puts "Bad move, bonzo."
    end
  end

  def play
    puts "How many humans playing? (0,1 or 2)"
    @players = gets.chomp.to_i
    if @players == 2
      player1 = HumanPlayer.new(self)
      player2 = HumanPlayer.new(self)
    elsif @players == 1
      player1 = HumanPlayer.new(self)
      player2 = ComputerPlayer.new(self)
    else
      player1 = ComputerPlayer.new(self)
      player2 = ComputerPlayer.new(self)
    end

    while true
      course_grid
      puts "Player 1 Moves!"
      player1_move(player1.move)
      if victory?
        puts "Player 1 Wins!"
        course_grid
        break
      end

      course_grid
      player2_move(player2.move)
      puts "Player 2 Moves!"
      if victory?
        puts "Player 2 Wins!"
        course_grid
        break
      end
    end
  end

  def course_grid
    puts "0#{@rows[0]}"
    puts "1#{@rows[1]}"
    puts "2#{@rows[2]}"
    puts "- 0   1   2"
  end
end


game = Game.new
