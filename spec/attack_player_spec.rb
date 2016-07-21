=begin

might need this later

require 'attack'

describe Attack do

  let(:player) {double Player.new(player)}

  it 'removes player hp' do
    expect{Attack(player)}.to change(player.hp).by(-10)
  end
end

=end
