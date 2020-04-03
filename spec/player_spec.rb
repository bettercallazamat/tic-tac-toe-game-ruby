# spec :player_spec.rb
require './lib/player.rb'

RSpec.describe Player do
  describe '.change_score' do
    context "when user wins" do
      it "gets +1 to score" do
        player = Player.new("name")
        player.change_score
        expect(player.score).to eq 1
      end
    end
  end
end