load 'cards.rb'

d = Deck.new
d.cards.each do |card|
  puts "[#{card.number}, #{card.color}, #{card.shading}, #{card.symbol}]"
end