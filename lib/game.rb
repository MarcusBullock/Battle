class Game

  attr_reader :player_1, :player_2, :turn, :loser

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
    turn ? attack(player_2) : attack(player_1)
  end

  def game_over?
    player_1.dead? || player_2.dead?
  end

  def find_loser
    if player_1.dead?
      @loser = player_1
    elsif player_2.dead?
      @loser = player_2
    end
  end

  private

  def toggle_turn
    turn ? @turn = false : @turn = true
  end

end
