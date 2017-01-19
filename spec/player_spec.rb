describe Player do
  subject(:player) { described_class.new(name, score) }
  let(:name) { double(:name) }
  let(:score) { double(:score) }

    it "returns the entered name" do
      #subject("jack")
      expect(player.name).to eq name
    end

    it "returns the score of a selected player" do
      expect(player.score).to eq score
    end

end
