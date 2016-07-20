require 'game'


describe Game do

  let(:subject) {described_class.new(:player_1, :player_2)}
  let(:player_1) {double(:player_1)}
  let(:player_2) {double(:player_2)}




  describe '#attack' do
    it 'deducts players hp' do
      expect(player_2).to receive(:deduct_hp)
      subject.attack(player_2)
    end
  end

  describe '#current_turn' do

    before do
      subject.instance_variable_set("@players", [player_1, player_2])
    end

    it 'starts with player_1' do
      expect(subject.current_turn).to eq(player_1)
    end
  end

  describe '#switch_turns' do

    before do
      subject.instance_variable_set("@players", [player_1, player_2])
    end

    it 'switches turns' do
      subject.switch_turns
      expect(subject.current_turn).to eq(player_2)
      expect(subject.current_opponent).to eq(player_1)

    end
  end

  describe '#current opponent' do

    before do
      subject.instance_variable_set("@players", [player_1, player_2])
    end

    it 'starts with player 2' do
      expect(subject.current_opponent).to eq(player_2)
    end
  end
end
