class Game

  attr_accessor :player_one, :player_two 

  def initialize(player_one = Player.new, player_two = Player.new)
    @player_one = player_one
    @player_two = player_two
  end

  def attack(player)
    player.score -= 10
  end
end
