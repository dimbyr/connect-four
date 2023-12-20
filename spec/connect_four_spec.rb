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
    context 'initially' do
      it 'contains all nil' do
        x = rand(0..5)
        y = rand(0..6)
        random_cell = game.board[x][y]
        expect(random_cell).to be_nil
      end
    end
  end
  describe '#update_board' do
    subject(:running_game) { described_class.new }
    col = rand(0..6)
    context 'After first update' do
      before do
        running_game.update_board(col, 'x')
      end
      it "board has x at [6, #{col}]" do
        first_move = running_game.board[5][col]
        expect(first_move).to eq('x')
      end
    end
    context 'After second update' do
      before do
        running_game.update_board(col, 'x')
        running_game.update_board(col, 'y')
      end
      it "board has y at [5, #{col}]" do
        second_move = running_game.board[4][col]
        expect(second_move).to eq('y')
      end
    end
  end
end
