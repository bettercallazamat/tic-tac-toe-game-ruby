# spec :player_spec.rb
require './lib/player.rb'

RSpec.describe Player do
  describe '.change_score' do
    context 'when user wins' do
      it 'gets +1 to score' do
        player = Player.new('name')
        player.change_score
        expect(player.score).to eq 1
      end
    end
  end

  describe '.initialize' do
    context 'when new Player instance is created' do
      it 'expects to receive string representing the name' do
        player = Player.new('name')
        expect(player.name.class).to eq String
      end
    end
  end
end
