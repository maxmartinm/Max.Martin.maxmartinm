require 'rest-client'
require 'json'


#greet the user

puts "Hello! Welcome to Petitions!"

puts "Would kind of petitions would you like to see? ('open' or 'closed')"

status = gets.strip

puts "Showing petitions of status #{status}..."
offset = 0

#create the petitions

#petitions = ["Gun Control", "Immigration", "Marijuana"]
while true
	response = RestClient.get "https://api.whitehouse.gov/v1/petitions.json?status=#{status}&offset=#{offset}"

	parsed_response = JSON.parse(response)

	petitions = parsed_response["results"]

	if petitions.empty?
		puts "No more peitions to show."
		break
	end

	#print each petition

	petitions.each_with_index do |petition, index|
		puts "#{offset + index + 1}. [#{petition["status"].upcase}] #{petition["title"]}"
	end

	offset += 10
	puts "Whould you like to see more? (Y/N)"
	
		break if (gets.strip== "n")	
end
puts

#goodbye
puts "Thanks, bye!"