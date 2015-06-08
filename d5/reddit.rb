require 'rest-client'
require 'json'

puts "Welcome to my reddit funny feed."
puts "Showing funny reddit articles..."


response = RestClient.get "http://www.reddit.com/r/funny.json"

parsed_response = JSON.parse(response)

posts = parsed_response["data"]["children"]

posts.each do |post, index|
	puts post["data"]["title"]
end