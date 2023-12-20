# frozen_string_litterals: true

require './lib/connect_four'

describe ConnectFour do
  describe '#create_board' do
    subject(:game) { described_class.new }
    it 'returns a 6 rows array' do 
      board = game.board
      expect(board.length).to eq(6)
    end

    it 'returns a 7 columns array' do
      fith_row = game.board[4]
      expect(fith_row.length).to eq(7)
    end
  end
end
