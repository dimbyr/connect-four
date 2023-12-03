# frozen_string_litterals: true

require_relative 'lib/connect_four'

game = ConnectFour.new
game.print_board
game.update_board(3)
game.print_board
game.update_board(3, "\u{24FD} ")
game.print_board
game.update_board(3)
game.print_board
game.update_board(3, "\u{24FD} ")
game.print_board
game.update_board(3)
game.print_board
game.update_board(3, "\u{24FD} ")
game.print_board
game.update_board(3)
game.print_board

