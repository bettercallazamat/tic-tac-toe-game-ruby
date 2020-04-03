# spec :board_spec.rb
require './lib/board.rb'

RSpec.describe Board do
  let(:board) { Board.new }
  describe '.valid?' do
    context "when user gives input" do
      it "returns true if this input is in range of 1..9 and this input is not taken" do
        expect(board.valid?([1, 2])).to eq true
      end

      it "returns false if this input is taken" do
        board.update([1, 2])
        expect(board.valid?([1, 2])).to eq false
      end

      it "returns false if this input is not in range of 1..9" do
        expect(board.valid?([1, 12])).to eq false
      end
    end
  end
end