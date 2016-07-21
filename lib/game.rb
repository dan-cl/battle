require 'player'

class Game

attr_reader :player_1 :player_2

    def initialize(player_1, player_2)
      @player_1 = player_1
      @player_2 = player_2
      @players = [player_1, player_2]
    end


  def attack
    @players.first.receive_damage
    @players.rotate
  end

end
