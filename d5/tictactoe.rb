# tictactoe.rb

# How will you keep track of whose turn it is?

	The turns have to alternate between the two players.
	A variable that if the turn is valid, it switches players. 

# What data structure will you use to keep track of the board? You only
#   know two (Array, Hash), but remember they can be nested (meaning an
#   array can contain another array—it can even contain a hash that 
#   contains another hash, though unclear if that will be useful :P)


# When a player makes a move, what should happen?

	Its move should be recorded in the matrix with either an
	X or an O.

# How do you keep track of which squares have Xs and which have Os?

	Once a square has an X or an O in it, it is there perminantely and 
	neither player can move there again.

# How do you detect a winner?

	A player wins by getting either 3 Xs or Os in a row.

# When does the program stop? Is there a loop? If so, what kind?

	 See above. The game stops when a player wins.
















puts "    |    |    "
puts "____+____+____"
puts "    |    |    "
puts "____+____+____"
puts "    |    |    "





if turn == "Player 1"
	puts "X"
elsif turn == "Player 2"
	puts "O"
end