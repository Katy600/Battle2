require 'game'
describe Game do

  subject(:game) {described_class.new}

  it "accepts the attack method" do
    expect(game).to respond_to :attack
  end
end
