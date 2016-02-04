require 'player'

describe 'Player' do

  let(:marcus){ double :marcus}
  let(:player_1){Player.new(marcus)}
  let(:the_world){ double :the_world}
  let(:player_2){Player.new(the_world)}

  describe '#name' do
    it '-> returns player name' do
      expect(player_1.name).to eq marcus
    end
  end

  describe '#hit_points' do
    it '-> it returns player hit points' do
      expect(player_1.hit_points).to eq Player::DEFAULT_HIT_POINTS
    end
  end


end
