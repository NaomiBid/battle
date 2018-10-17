class Player
  def initialize(name)
    @name = name
    @hp = 60
  end

  def name
    @name
  end

  def hp
    @hp
  end

  def reduce_hp
    @hp -= 10
  end
end
