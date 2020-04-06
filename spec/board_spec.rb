# spec :board_spec.rb
require './lib/board.rb'

RSpec.describe Board do
  let(:board) { Board.new }
  describe '.valid?' do
    context 'when user gives input' do
      it 'returns true if this input is in range of 1..9 and this input is not taken' do
        expect(board.valid?([1, 2])).to eq true
      end

      it 'returns false if this input is taken' do
        board.board.push([1, 2])
        expect(board.valid?([1, 2])).to eq false
      end

      it 'returns false if this input is not in range of 1..9' do
        expect(board.valid?([1, 12])).to eq false
      end
    end
  end

  describe '.update' do
    context 'when input is valid' do
      it 'push input to board' do
        board.update([1, 2])
        expect(board.board.length).to eq 2
      end
    end
  end

  describe '.win?' do
    context 'when win condition is met' do
      it 'returns true' do
        board.update([1, 1])
        board.update([1, 2])
        board.update([1, 3])
        expect(board.win?).to eq true
      end
    end
  end

  describe '.draw?' do
    context 'when draw condition is met' do
      it 'returns true' do
        board.update([1, 1])
        board.update([2, 2])
        board.update([1, 3])
        board.update([2, 9])
        board.update([1, 4])
        board.update([1, 5])
        board.update([2, 6])
        board.update([1, 7])
        board.update([2, 8])
        expect(board.draw?).to eq true
      end
    end
  end

  describe '.show' do
    context 'when player one gives an input of 1' do
      it 'returns a string displaying the board with an X on the first position' do
        board.update([1, 1])
        expect(board.show).to eq "X |   |  \n----------\n  |   |  \n----------\n  |   |  "
      end
    end
  end
end
