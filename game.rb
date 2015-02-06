load 'cards.rb'

i=0
d = Deck.new
d.cards.shuffle! #shuffle cards
d.cards.each do |card|
  puts "#{i+=1}. [#{card.number}, #{card.color}, #{card.shading}, #{card.symbol}]"
end