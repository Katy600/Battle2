require 'game'
describe Game do

  subject(:game) {described_class.new(player1, player2)}
  let(:player1) {double :player1}
  let(:player2) {double :player2}

  it "accepts the attack method" do
    expect(game).to respond_to :attack
  end

  it 'accepcts two players' do
    expect(game.player1).to eq player1
  end
end
