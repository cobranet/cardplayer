require "rails_helper"

describe Card,"#suits" do 
  it "returns array of suits" do 
    expect(Card.suits).to eq(%w(SPADE DIAMOND HEARD CLUB)) 
  end
end

describe Card,"#values" do 
  it "returns array of card values" do
    expect(Card.values).to eq(%w(A 2 3 4 5 6 7 8 9 10 J Q K))
  end
end

describe  Card,"#new" do
  it "create card from number from 1 to 52" do
    c = Card.new(1)
    expect(c.suit).to eq("SPADE")
    expect(c.value).to eq("A") 

    c = Card.new(13)
    expect(c.suit).to eq("SPADE")
    expect(c.value).to eq("K")

    c = Card.new(14)
    expect(c.suit).to eq("DIAMOND")
    expect(c.value).to eq("A")

    c = Card.new(52)
    expect(c.suit).to eq("CLUB")
    expect(c.value).to eq("K")
  end
end

describe Card, "#to_s" do
  it "return string for card as AS, 2D 10S.." do
    expect(Card.new(1).to_s).to eq("AS")
    expect(Card.new(13).to_s).to eq("KS")
    expect(Card.new(52).to_s).to eq("KC")
    expect(Card.new(15).to_s).to eq("2D")
  end
end
