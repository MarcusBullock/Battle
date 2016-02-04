require'game'

describe Game do

  let(:player_1){double :player_1}
  let(:player_2){double :player_2}
  subject(:game){described_class.new(player_1, player_2)}

  describe '#attack' do
    it '-> takes HP from the player when attacking' do
      expect(player_1).to receive(:receive_damage)
      game.attack(player_1)
    end
  end
end
