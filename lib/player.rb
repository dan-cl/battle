class Player
attr_reader :name, :hp
  def initialize(name)
    @name = name
    @hp = 60
  end

  def attack(opponent)
    opponent.deduct_hp
  end

  def deduct_hp
    @hp -= 10
  end
end
