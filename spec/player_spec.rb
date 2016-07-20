require 'player'

describe Player do
  
let(:subject) {described_class.new('Ben')}

  describe '#name' do
    it 'knows it\'s name' do
      expect(subject.name).to eq 'Ben'
    end
  end
end
