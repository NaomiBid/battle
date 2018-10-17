require "player"
describe Player do
  it "should return the players name" do
    subject = Player.new("Naomi")
    expect(subject.name).to eq 'Naomi'
  end
end
