require 'player'

describe Player do

let(:subject) {described_class.new('Uno')}
let(:player_2) {described_class.new('Dos')}

  describe '#name' do
    it 'knows it\'s name' do
      expect(subject.name).to eq 'Uno'
    end
  end

  describe '#hp' do
    it 'know it\'s hp' do
      expect(subject.hp).to eq 60
    end
  end

  describe '#attack' do
    it 'deducts hp from opponent' do
      expect(player_2).to receive(:deduct_hp)
      subject.attack(player_2)
    end
  end

  describe '#deduct_hp' do
    it 'reduces hp by 10' do
      expect{subject.deduct_hp}.to change{subject.hp}.by -10
    end
  end
end
