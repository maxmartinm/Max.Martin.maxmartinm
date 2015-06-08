require 'rest-client'
require 'json'

puts "Welcome, we can rate how naughty your favorite song is!"
puts "What is the name of the arist?"
artist = gets.strip
puts "What is the name of the song?"
song = gets.strip
puts "Calculating naughty ranking..."
puts
puts "Your favorie song's naughty ranking is ... "

artist = artist.split.join("+")
song = song.split.join("+")

response_url = "https://musixmatchcom-musixmatch.p.mashape.com/wsr/1.1/matcher.track.get?q_artist=#{artist}&q_track=#{song}&mashape-key=lsnoCYf2ckmshvDgCJoplLsGRl5vp14u8BzjsnNQhlYOgpzodU&f_has_lyrics=1"

# response = RestClient.get response_url

# parsed_music_match = JSON.parse(response)

# puts parsed_music_match 


filter_url = "https://neutrinoapi-bad-word-filter.p.mashape.com/bad-word-filter&mashape-key=lsnoCYf2ckmshvDgCJoplLsGRl5vp14u8BzjsnNQhlYOgpzodU&f_has_lyrics=1"

response_filter = RestClient.post(filter_url,
  {
    "censor-character" => "*",
    "content" =>  "fuck" #{ }"#{parsed_music_match["lyric_body"]}"
  },
  {
    "X-Mashape-Key" => "lsnoCYf2ckmshvDgCJoplLsGRl5vp14u8BzjsnNQhlYOgpzodU",
    "Content-Type" => "application/x-www-form-urlencoded",
    "Accept" => "application/json"
  }
 )

parsed_response_filter = JSON.parse(response_filter)

bad_words = parsed_response_filter["bad words list"]

puts "#{bad words}"

# key 
# mashape-key=lsnoCYf2ckmshvDgCJoplLsGRl5vp14u8BzjsnNQhlYOgpzodU&f_has_lyrics=1&


