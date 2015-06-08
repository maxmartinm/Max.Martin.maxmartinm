def index_of (string, letter)
	string_input = string.split(//)
	string_input.each_with_index do |x, index|

		if letter == x
			return index
		else 
			return -1
		end
	end
end 


def find_by_name (array, string)
	array.each_with_index do |x, index|

		if x[:name] == string
			return x[:id]
		end
	end
end

string = gets.strip.to_s
letter = gets.strip.to_s
puts "#{index_of(string,letter)}"


array = [
  {
    :id => 1,
    :name => "bru"
  },
  {
    :id => 2,
    :name => "ski"
  },
  {
    :id => 3,
    :name => "brunette"
  },
  {
    :id => 4,
    :name => "ski"
  }
]


puts "#{find_by_name(array,string)}"