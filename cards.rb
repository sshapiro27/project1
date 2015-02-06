class Card
  COLORS = %w(Red Green Purple)
  NUMBERS = %w(1 2 3)
  SHADING = %w(Solid Striped Open)
  SYMBOL = %w(Diamond Squiggle Oval)

  attr_accessor :color, :number, :shading, :symbol

  def initialize(id)
    self.color = COLORS[id % 3]
    self.number = NUMBERS[id % 3]
    self.shading = SHADING[id % 3]
    self.symbol = SYMBOL[id % 3]
  end
end

class Deck
  attr_accessor :cards
  def initialize
    # shuffle array and init each Card
    self.cards = (0..80).to_a.shuffle.collect { |id| Card.new(id) }
  end
end