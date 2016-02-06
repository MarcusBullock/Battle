require'game'

describe Game do

  let(:player_1){double :player, hit_points: 100}
  let(:player_2){double :player, hit_points: 100}
  subject(:game){described_class.new(player_1, player_2)}
  subject(:finished_game){described_class.new(dead_guy, player_2)}
  let(:dead_guy){double :player, hit_points: 0}

  describe '#attack' do
    context '-> as player 1' do
      it '-> I can take HP from player 2 when attacking' do
        expect(player_1).to receive(:receive_damage)
        game.attack(player_1)
      end
    end

    context '-> as player 2' do
      it '-> I can take HP from player 1 after he has attacked me' do
        expect(player_2).to receive(:receive_damage)
        game.attack(player_2)
      end
    end
  end

  describe '#game_over?' do
    it '-> returns false if players still have HP' do
      expect(game.game_over?).to be false
    end

    it '-> returns true if one of the players is at 0HP' do
      expect(finished_game.game_over?).to be true
    end
  end

end
