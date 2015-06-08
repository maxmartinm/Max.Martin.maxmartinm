puts "Welcome to Max's mini quiz."
puts "What's my last name?"
last_name = gets.strip
if last_name == "Martin"
	total= total.to_i + 1
	puts "Right! You have #{total.to_i} point(s)." 
else 
	puts "Wrong...It's Martin. You have #{total.to_i} point(s)."
end
puts "How many siblings do I have?"
siblings = gets.strip.to_i
if siblings == 3
	total= total.to_i + 1
	puts "Right! You have #{total.to_i} point(s)."
else 
	puts "Wrong...I have 3 siblings. You have #{total.to_i} point(s)."
end
puts "What residential college am I in at Yale?"
college = gets.strip
if college == "Berkeley" 
	total = total.to_i + 1
	puts "Nice! You have #{total.to_i} point(s)."
else 
	puts "Nope...I'm in Berkeley! You have #{total.to_i} point(s)."
end
puts "Thanks for playing!"
