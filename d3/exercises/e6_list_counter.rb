puts "Welcome to list builder++!"

list = {}

while true
	puts "What can I do for you?"

	input = gets.strip
	input_array = input.split

	command = input_array[0]
	item = input_array[1]

	if command == "add"
		puts item

		if list.has_key?(item)
			list[item] = list[item] + 1
		else
			list[item] = 1
		end

		puts "Added! Your container has #{list}."
	elsif command == "remove"
		puts item

		if list.has_key?(item)
			if list[item] == 1
				list.delete(item)
			else
				list[item] = list[item] - 1
			end
		end
		puts "Added! Your container has #{list}."
	elsif command == "quit"
		break

	end

end