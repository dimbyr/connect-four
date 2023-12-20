# frozen_string_litterals: true

# Game board
class ConnectFour

  attr_accessor :board

  def initialize
    @board = create_board
  end

  def create_board
    Array.new(6) {Array.new(7)}
  end

  def update_board(col, color = "\u{2605} ")
    tmp_board = @board
    (0..5).each do |idx|
      current_row = tmp_board[idx]
      next_row = idx < 5 ?  tmp_board[idx + 1] : Array.new(7, 1)
      tmp_board[idx][col] = color if next_row[col] && current_row[col].nil?
    end
    @board = tmp_board
  end

  def game_over?
    false
  end

  def print_board
    printed = @board.map do |row| 
      row.map { |spot| spot.nil? ? "\u{2B1C}" : spot }
    end
    puts ["\u{24F5}", "\u{24F6}", "\u{24F7}", "\u{24F8}", "\u{24F9}", "\u{24FA}", "\u{24FB}"].join(' ')
    puts printed.map(&:join)
  end
end

# A player class
class Player
  attr_accessor :ball

  def initialize(ball)
    @ball = ball
  end

  def play(game, ball = @ball)
    num = getnum
    game.update_board(num, ball) 
  end

  def getnum
    puts 'Your turn: 1,...,7'
    num = gets.chomp.to_i
    num - 1
  end
end

# A human player
class Human < Player
end

# Computer, playing randomly
class Computer < Player
  def getnum
    rand(0..6)
  end
end
