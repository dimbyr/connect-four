# frozen_string_litterals: true

require_relative 'lib/connect_four'

sun =  "\u{1F534}"
moon = "\u{1F535}"
game = ConnectFour.new
human = Human.new(sun)
comp = Computer.new(moon)
loop do
  human.play(game)
  comp.play(game)
  game.print_board
end
