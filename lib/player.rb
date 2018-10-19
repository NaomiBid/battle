class Player

  attr_reader :hp, :name

  def initialize(name)
    @name = name
    @hp = 60
  end

  def reduce_hp
    @hp -= 10
  end
end
