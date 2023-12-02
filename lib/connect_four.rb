# frozen_string_litterals: true

class ConnectFour
  attr_accessor :board

  def initialize
    @board = create_board
  end

  def create_board
    Array.new(6) {Array.new(7)}
  end
  
  def update_board(col, color = "\u{24FC} ")
    tmp_board = @board
    (0..5).each do |idx|
      current_row = tmp_board[idx]
      next_row = idx < 5 ?  tmp_board[idx + 1] : Array.new(7, 1)
      tmp_board[idx][col] = color if next_row[col] &&  current_row[col].nil?
    end
    @board = tmp_board
  end

  def print_board
    printed = @board.map do |row| 
      row.map { |spot| spot.nil? ? "\u{2B1C}" : spot }
    end
    puts  ["\u{24F5}", "\u{24F6}", "\u{24F7}", "\u{24F8}", "\u{24F9}", "\u{24FA}", "\u{24FB}"].join(' ')
    puts printed.map {|line| line.join}
  end
end

# For test
game = ConnectFour.new
game.print_board
game.update_board(4)
game.print_board
game.update_board(3, "\u{24FD} ")
game.print_board
game.update_board(2)
game.print_board
game.update_board(4, "\u{24FD} ")
game.print_board
game.update_board(3)
game.print_board
game.update_board(3, "\u{24FD} ")
game.print_board
game.update_board(3)
game.print_board
