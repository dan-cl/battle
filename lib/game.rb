require_relative 'player'

class Game

attr_reader :player_1, :player_2, :players

    def self.create(player_1, player_2)
      @game = Game.new(player_1, player_2)
    end

    def self.instance
      @game
    end

    def initialize(player_1, player_2)
      @player_1 = player_1
      @player_2 = player_2
      @players = [player_1, player_2]
    end


  def attack
    @players.last.receive_damage
    return if game_over?
    @players.rotate!
  end

  def game_over?
    @players.last.hp == 0
  end

end