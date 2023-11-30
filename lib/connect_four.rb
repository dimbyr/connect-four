# frozen_string_litterals: true

class ConnectFour
  attr_accessor :board

  def initialize
    @board = create_board
  end

  def create_board
    Array.new(6) {Array.new(7)}
  end

  def print_board(array = @board)
    printed = array.map do |row| 
      row.map! { |spot| "\u{2B1C}" if spot.nil? }
    end
    puts  (1..7).to_a.join(' ')
    puts printed.map {|line| line.join}
  end
end

game = ConnectFour.new

game.print_board
