class Card
  COLORS = %w(Red Green Purple)
  NUMBERS = %w(1 2 3)
  SHADING = %w(Solid Striped Open)
  SYMBOL = %w(Diamond Squiggle Oval)

  attr_accessor :color, :number, :shading, :symbol

  def initialize(w, x, y, z)
    #@cards = SYMBOL.product(SHADING.product((COLORS.product(NUMBERS)))).shuffle
    self.color = COLORS[w]
    self.number = NUMBERS[x]
    self.shading = SHADING[y]
    self.symbol = SYMBOL[z]
  end
end

class Deck
  attr_accessor :cards
  def initialize
    self.cards = Array.new #new empty array
    #Go through all possible combinations
    (0..2).each do |w|
      (0..2).each do |x|
        (0..2).each do |y|
          (0..2).each do |z|
            self.cards.push(Card.new(w, x, y, z)) #init each card
          end
        end
      end
    end
  end
end