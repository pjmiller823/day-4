require 'HTTParty'
require 'json'
require 'ap'

response = HTTParty.get("http://swapi.co/api/films/")

questions = JSON.parse(response.body)

# response.body
# response.code
# response.message
# response.headers

a_new_hope = questions["results"].find { |film| film["episode_id"] == 4 }
empire_strikes_back = questions["results"].find { |film| film["episode_id"] == 5 }
return_of_the_jedi = questions["results"].find { |film| film["episode_id"] == 6 }
episode_1 = questions["results"].find { |film| film["episode_id"] == 1 }
episode_2 = questions["results"].find { |film| film["episode_id"] == 2 }
episode_3 = ßquestions["results"].find { |film| film["episode_id"] == 3 }


puts "Have you heard of Star Wars? Please pick a Star War."
puts "this is the best #{a_new_hope["opening_crawl"]}"
answer = gets.chomp

if answer == "1"
  puts "you picked one #{questions}"
end
