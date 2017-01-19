require 'game'

describe Game do
  subject(:game) { described_class.new }
  subject(:game2) { described_class.new(player_one,player_two)}
  let(:player_one) { double(:player_one) }
  let(:player_two) { double(:player_two) }


    it "accepts two arguments" do
      expect(game2.player_one).to eq(player_one)
      expect(game2.player_two).to eq(player_two)
      # expect(subject).to respond_to(:new).with(2).arguments
    end

  describe "#attack" do
    it "descreases the attacked player score by 10" do
      expect{game.attack(game.player_one)}.to change{(game.player_one).score}.by -10
    end
  end

end
