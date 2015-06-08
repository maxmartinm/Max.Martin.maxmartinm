puts "Welcome to list builder!"
list = []

while true
puts "What can I add?"
list << gets.strip
puts "Added! Your list is #{list}."
puts "What else can I add?"
list << gets.strip
puts "Added! Your list is #{list}."

puts list

end