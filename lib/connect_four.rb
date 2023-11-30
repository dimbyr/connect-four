# frozen_string_litterals: true

class ConnectFour
  attr_accessor :board

  def initialize
    @board = create_board
  end

  def create_board
    Array.new(6) {Array.new(7)}
  end
  
  def update_board(col, color)
  end

  def print_board(array = @board)
    printed = array.map do |row| 
      row.map! { |spot| "\u{2B1C}" if spot.nil? }
    end
    puts  ["\u{24F5}", "\u{24F6}", "\u{24F7}", "\u{24F8}", "\u{24F9}", "\u{24FA}", "\u{24FB}"].join(' ')
    puts printed.map {|line| line.join}
  end
end

# game = ConnectFour.new

# game.print_board
