puts "Welcome to list builder++!"
list = []

while true
	puts "What can I do for you?"

	input = gets.strip
	input_array = input.split

	if input_array[0] == "add"
		puts input_array[1]
		list << input_array[1]
		puts "Added! Your container has #{list}."
	elsif input_array[0] == "remove"
		list.delete(input_array[1])
		puts "Removed! Your container has #{list}."
	elsif input_array[0] == "quit"
		break
	end

end
