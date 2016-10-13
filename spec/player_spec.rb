require 'player.rb'

describe Player do
  subject(:player) {described_class.new("Lilian")}
  it 'returns the players name' do
  expect(player.name).to eq "Lilian"
end
end
