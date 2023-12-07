# frozen_string_litterals: true

require_relative 'lib/connect_four'

sun =  "\u{2609}"
moon = "\u{263D}"
game = ConnectFour.new
human = Human.new(sun)
comp = Computer.new(moon)

human.play(game)
comp.play(game)
game.print_board
