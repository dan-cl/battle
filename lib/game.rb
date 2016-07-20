class Game

  attr_reader :player_1, :player_2, :players

  def initialize (player_1, player_2)
    @player_1 = Player.new(player_1)
    @player_2 = Player.new(player_2)
    @players = [@player_1, @player_2]

  end

  def attack(player)
    player.deduct_hp
  end

 def current_turn
      @players.first
      end

  def switch_turns
    @players.rotate!
  end

  def current_opponent
    @players.last
  end
end
