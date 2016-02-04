require 'player'

describe 'Player' do

  subject(:marcus){Player.new('Marcus')}
  subject(:the_world){Player.new('The World')}

  describe '#name' do
    it '-> returns player name' do
      expect(marcus.name).to eq 'Marcus'
    end
  end

  describe '#hit_points' do
    it '-> it returns player hit points' do
      expect(marcus.hit_points).to eq Player::DEFAULT_HIT_POINTS
    end
  end

  describe '#attack' do
    it '-> hit points are taken from the other player' do
      expect(the_world).to receive(:receive_damage)
      marcus.attack(the_world)
    end
  end

end
