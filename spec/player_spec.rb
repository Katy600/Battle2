require 'player.rb'

describe Player do
  subject(:player) {described_class.new("Lilian")}

  it 'returns the players name' do
  expect(player.name).to eq "Lilian"
  end

  it 'returns a score which is 10 points lower' do
    player.reduce
    expect(player.points).to eq 50
  end

end
