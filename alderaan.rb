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
episode_3 = questions["results"].find { |film| film["episode_id"] == 3 }
force_awakens = questions["results"].find { |film| film["episode_id"] == 7 }


puts "Have you heard of Star Wars? Please pick a Star Wars movie."
puts "For episode 4 press 1"
puts "For episode 5 press 2"
puts "For episode 6 press 3"
puts "For episode 1 press 4"
puts "For episode 2 press 5"
puts "For episode 3 press 6"
puts "For episode 7 press 7"
answer = gets.chomp

if answer == "1"
  puts "A New Hope"
  puts "#{a_new_hope["opening_crawl"]}"
  film_picked = a_new_hope
end

if answer == "2"
  puts "The Empire Strikes Back"
  puts "#{empire_strikes_back["opening_crawl"]}"
  film_picked = empire_strikes_back
end

if answer == "3"
  puts "Return of the Jedi"
  puts "#{return_of_the_jedi["opening_crawl"]}"
  film_picked = return_of_the_jedi
end

if answer == "4"
  puts "The Phantom Menace"
  "puts #{episode_1["opening_crawl"]}"
  film_picked = episode_1
end

if answer == "5"
  puts "Attack of the Clones"
  puts "#{episode_2["opening_crawl"]}"
  film_picked = episode_2
end

if answer == "6"
  puts "Revenge of the Sith"
  puts "#{episode_3["opening_crawl"]}"
  film_picked = episode_3
end

if answer == "7"
  puts "The Force Awakens"
  puts "#{force_awakens["opening_crawl"]}"
  film_picked = force_awakens
end
