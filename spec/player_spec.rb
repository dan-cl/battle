require 'player'

describe Player do
  subject(:frank) {Player.new('frank')}
  subject(:dave) {Player.new('dave')}

  describe '#name' do
    it 'returns it\'s name' do
    expect(frank.name).to eq('frank')
    end
  end

  describe '#hp' do
    it 'returns the hit points' do
      expect(frank.hp).to eq(60)
    end
  end

#   describe '#attack' do
#     it 'damages the player' do
#       expect(dave).to receive(:receive_damage)
#       frank.attack(dave)
#     end
#   end
#
#   describe '#receive_damage' do
#     it 'reduces the player hp' do
#       expect{dave.receive_damage}.to change{dave.hp}.by(-10)
#     end
#   end
 end
