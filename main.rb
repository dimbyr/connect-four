# frozen_string_litterals: true

require_relative 'lib/connect_four'

sun =  "\u{2609} "
game = ConnectFour.new
game.print_board
game.update_board(3)
game.print_board
game.update_board(4, sun)
game.print_board
game.update_board(3)
game.print_board
game.update_board(3, sun)
game.print_board
game.update_board(2)
game.print_board
game.update_board(3, sun)
game.print_board
game.update_board(2)
game.print_board

