
class Game

require 'colorize'
require 'json'
require 'yaml'

  def initialize
    @placed_mines = 0
    @correct_flags = 0
    @flags = 0
    @mines = 0
  end

  def start
    puts "Welcome to Bombsweeper\u2122!"
    puts "Type <new> to start a new game or <continue> to... well... continue."
    start_input = gets.chomp
    if start_input == "continue"
      game_state = YAML.load(File.read('save_game.txt'))
      game_state.run
    else
      puts "Choose <easy> or <hard> difficulty."
      @difficulty = gets.chomp
      create_board
      run
    end
  end

  def run
    while true
      display_board
      puts "--------------------"
      puts "Flags placed: #{@flags}"
      puts "Dig(d) or Flag(f)?"
      dig_flag = gets.chomp
      if dig_flag == "f"
        flag
      elsif dig_flag == "debug"
        debug_board
      else
        dig
      end
      if victory?
        puts "YOU WIN!"
        return
      end
      File.open('save_game.txt', 'w') {|f| f.write(YAML.dump(self)) }
    end
  end

  def flag
    puts "Flag at what row?"
    row = gets.chomp.to_i
    puts "Flag at what column?"
    column = gets.chomp.to_i
    flag_tile(row, column)
  end

  def dig
    puts "Dig at what row?"
    row = gets.chomp.to_i
    puts "Dig at what column?"
    column = gets.chomp.to_i
    if @game_board[row][column].visited?
      puts "No good. You've already looked there."
      dig
    else
      make_move(row, column)
    end
  end

  def flag_tile(row, column)
    @game_board[row][column].flagged? ? @flags -= 1 : @flags += 1
    @game_board[row][column].flag
    if @game_board[row][column].is_bomb?
      @correct_flags += 1
    end
  end

  def victory?
    @correct_flags == 10 && @flags == 10
  end

  def make_move(row, column)
    if @game_board[row][column].is_bomb?
      raise "KABOOM"
    else
      @game_board[row][column].visit
      tile = @game_board[row][column]
      clear_adjacent(tile)
    end
  end

  #This is great for both debugging and cheating. 
  # def debug_board
  #   puts "Flags: #{@flags}"
  #   puts "Winning flags: #{@correct_flags}"
  #   bottom_row = "   "
  #   puts
  #   @game_board.each_with_index do |row, index|
  #     display_row = ""
  #     row.each do |tile|
  #       if tile.is_bomb?
  #         display_row << "X "
  #       else
  #         display_row << "* "
  #       end
  #     end
  #     puts "#{index}  #{display_row}"
  #   end
  #   @game_board[8].each_with_index do |row, index|
  #     bottom_row << "#{index.to_s} "
  #   end
  #   puts
  #   puts bottom_row
  # end

  def display_board
    bottom_row = "   "
    puts
    @game_board.each_with_index do |row, index|
      display_row = ""
      row.each do |tile|
        if tile.flagged?
          display_row << "F ".yellow
        elsif tile.touched_bombs > 0 && !tile.is_bomb?
          display_row << "#{tile.touched_bombs} "
        elsif !tile.visited?
          display_row << "* ".blue
        elsif tile.visited
          display_row << "  "
        end
      end
      puts "#{index}  #{display_row}"
    end
    @game_board[0].each_with_index do |row, index|
      bottom_row << "#{index.to_s} "
    end
    puts
    puts bottom_row
  end

  def hide_mines
    while @placed_mines < @mines
      placement_row = rand(@rows)
      placement_column = rand(@rows)
      if @game_board[placement_row][placement_column].is_bomb?
        hide_mines
      else
        @game_board[placement_row][placement_column].give_bomb
        @placed_mines += 1
      end
    end
  end

  def create_board
    if @difficulty == "easy"
        @mines = 10
        @rows = 9
        @columns = 9
        @game_board = []
        9.times do |index1|
          row = []
          9.times do |index2|
            row << Tile.new(index1, index2)
          end
          @game_board << row
        end
        @game_board
        hide_mines
      else
        @mines = 40
        @rows = 16
        @columns = 16
        @game_board = []
        16.times do |index1|
          row = []
          16.times do |index2|
            row << Tile.new(index1, index2)
          end
          @game_board << row
        end
        @game_board
        hide_mines
      end
  end

  def clear_adjacent(tile)
    neighbors = tile.find_neighbors
    neighbors.each do |index|

      neighbor_objects = []
      neighbor_objects << @game_board[index[0]][index[1]]

      neighbor_objects.each do |object|
        bombs_touched = neighbor_bomb_counter(object)
        object.add_touched_bombs(bombs_touched)

        if object.touched_bombs > 0 && !object.is_bomb?
          object.visit
        elsif !object.visited? && !object.is_bomb?
          object.visit
          clear_adjacent(object)
        end

      end
    end
  end

  def neighbor_bomb_counter(tile)
    touched_bombs = 0
    neighbors = tile.find_neighbors
    neighbors.each do |index|

      neighbor_objects = []
      neighbor_objects << @game_board[index[0]][index[1]]

      neighbor_objects.each do |object|
        if object.is_bomb?
          touched_bombs += 1
        end
      end
    end
    touched_bombs
  end
end

class Tile
  attr_accessor :bomb, :flagged, :visited

  def initialize(row, column)
    @bomb = false
    @flagged = false
    @visited = false
    @row = row
    @column = column
    @touched_bombs = 0
  end

  def touched_bombs
    @touched_bombs
  end

  def add_touched_bombs(num)
    @touched_bombs = num
  end

  def is_bomb?
    @bomb
  end

  def give_bomb
    @bomb = true
  end

  def flagged?
    @flagged
  end

  def flag
    @flagged == false ? @flagged = true : @flagged = false
  end

  def visited?
    @visited
  end

  def visit
    @visited = true
  end

  def find_neighbors
    neighbors = []

    @row + 1 <= 8 ? row_plus = true : row_plus = false
    @row - 1 >= 0 ? row_minus = true : row_minus = false
    @column + 1 <= 8 ? column_plus = true : column_plus = false
    @column - 1 >= 0 ? column_minus = true : column_minus = false


      neighbors << [@row, @column]
    if row_plus
      neighbors << [@row + 1, @column]
    end
    if row_minus
      neighbors << [@row - 1,@column]
    end
    if column_plus
      neighbors << [@row, @column + 1]
    end
    if column_minus
      neighbors << [@row, @column - 1]
    end
    if row_plus && column_plus
      neighbors << [@row + 1, @column + 1]
    end
    if row_minus && column_minus
      neighbors << [@row - 1, @column - 1]
    end
    if row_plus && column_minus
      neighbors << [@row + 1, @column - 1]
    end
    if row_minus && column_plus
      neighbors << [@row - 1, @column + 1]
    end

    neighbors
  end
end