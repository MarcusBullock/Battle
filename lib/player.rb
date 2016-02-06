class Player

  attr_reader :name, :hit_points

  DEFAULT_HIT_POINTS = 100

  def initialize(name, hit_points = DEFAULT_HIT_POINTS)
    @name = name
    @hit_points = hit_points
  end

  def receive_damage
    @hit_points -= Kernel.rand(20)
  end

  def dead?
    @hit_points <= 0
  end

end
