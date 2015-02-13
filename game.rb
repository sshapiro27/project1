load 'cards.rb'

def checkSetNumber(card1, card2, card3)
	if ((card1.number == card2.number) & (card2.number == card3.number)) | ((card1.number != card2.number) & (card2.number != card3.number) & (card1.number != card3.number))
		return true
	else
		return false
	end
end

def checkSetColor(card1, card2, card3)
	if ((card1.color == card2.color) & (card2.color == card3.color)) | ((card1.color != card2.color) & (card2.color != card3.color) & (card1.color != card3.color))
		return true
	else
		return false
	end
end

def checkSetShading(card1, card2, card3)
	if ((card1.shading == card2.shading) & (card2.shading == card3.shading)) | ((card1.shading != card2.shading) & (card2.shading != card3.shading) & (card1.shading != card3.shading))
		return true
	else
		return false
	end
end

def checkSetSymbol(card1, card2, card3)
	if ((card1.symbol == card2.symbol) & (card2.symbol == card3.symbol)) | ((card1.symbol != card2.symbol) & (card2.symbol != card3.symbol) & (card1.symbol != card3.symbol))
		return true
	else
		return false
	end
end

def checkSet(card1, card2, card3)
	if (checkSetNumber(card1, card2, card3) & checkSetColor(card1, card2, card3) & checkSetShading(card1, card2, card3) & checkSetSymbol(card1, card2, card3))
		return true
	else
		return false
	end
end

i=0
d = Deck.new
d.cards.shuffle! #shuffle cards

#set up initial deck of cards
active = Array.new
(0..11).each do |x|
	active.push(d.cards[x])
end

active.each do |w|
	puts "#{i+=1}. #{w.number} #{w.color} #{w.shading} #{w.symbol}"
end

if (checkSet(active[0], active[1], active[2]))
	puts "true"
else
	puts "false"
end

#Get number of players and build player->score map
#While deck not empty
	#wait on input or timer up
		#if input, find player and checkset
			#if valid, increment player score and draw 3 new
			#if not valid, decrement player score
		#if timer up and drawn.length < 21, draw three more
#end

#Find highest score and print player name
