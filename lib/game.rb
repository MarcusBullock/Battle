class Game

  attr_reader :player_1, :player_2, :turn

  def initialize(player_1 = Player.new, player_2 = Player.new)
    @player_1 = player_1
    @player_2 = player_2
    @turn = true
  end

  def attack(player)
    player.receive_damage
    toggle_turn
  end

  def switch_attack
    @turn ? attack(@player_2) : attack(@player_1)
  end

  private

  def toggle_turn
    @turn ? @turn = false : @turn = true
  end

end
