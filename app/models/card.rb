class Card
  @@SUITS = %w(SPADE DIAMOND HEARD CLUB)
  @@VALUES = %w(A 2 3 4 5 6 7 8 9 10 J Q K)
  def initialize(id)
    @id = id
  end
  def self.suits 
    @@SUITS
  end
  def self.values 
    @@VALUES
  end
end
