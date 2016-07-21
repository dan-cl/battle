require 'game'

describe Game do
subject(:game) {described_class.new(player_1,player_2)}
let(:player_1) { double :player}
let(:player_2) { double :player}

  describe '#attack' do

    it 'attacks player' do
      expect(player_2).to receive(:receive_damage)
      expect(player_2).to receive(:hp).and_return(50)
      game.attack
    end

    it 'attacks alternate players' do
      expect(player_2).to receive(:receive_damage)
      expect(player_2).to receive(:hp).and_return(50)
      game.attack
      expect(player_1).to receive(:receive_damage)
      expect(player_1).to receive(:hp).and_return(50)
      game.attack
    end

  end

  describe '#player_1' do
    it 'retrieves the first player' do
      expect(game.player_1).to eq player_1
    end
  end

  describe '#player_2' do
    it 'retrieves the second player' do
      expect(game.player_2).to eq player_2
    end
  end

end
