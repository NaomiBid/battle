require "player"
describe Player do
  it "should return the players name" do
    subject = Player.new("Naomi")
    expect(subject.name).to eq 'Naomi'
  end

  it "should return the value of HP" do
    subject = Player.new("Naomi")
    expect(subject.hp).to eq 60
  end

  describe "#reduce_hp" do
    it "should reduce the HP by 10" do
      subject = Player.new("Naomi")
      expect { subject.reduce_hp }.to change { subject.hp }.by (-10)
    end
  end
end
