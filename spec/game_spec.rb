require 'game'


describe Game do

  let(:subject) {described_class.new(:player_1, :player_2)}
  let(:player_1) {double(:player)}
  let(:player_2) {double(:player)}



  describe '#attack' do
    it 'deducts players hp' do
      expect(player_2).to receive(:deduct_hp)
      subject.attack(player_2)
    end
  end
end
