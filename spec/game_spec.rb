require 'game'

describe Game do
  subject(:game) { described_class.new }
  describe "#attack" do
    it "descreases the attacked player score by 10" do
      expect{game.attack(game.player_one)}.to change{(game.player_one).score}.by -10
    end
  end
end
