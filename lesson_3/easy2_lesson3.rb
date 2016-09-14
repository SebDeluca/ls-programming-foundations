#ages = { "Herman" => 32, "Lily" => 30, "Grandpa" => 402, "Eddie" => 10 }
#p ages.key?("Spot")

#ages = { "Herman" => 32, "Lily" => 30, "Grandpa" => 5843, "Eddie" => 10, "Marilyn" => 22, "Spot" => 237 }

#puts ages.values.inject(:+)

#young_folk = ages.each do |k,v|
#  if v >= 100
#    ages.delete(k)
#  end
#end

#ages.keep_if { |_, age| age < 100 }
#puts ages

munsters_description1 = "The Munsters are creepy in a good way."
#puts munsters_description1.capitalize!
munsters_description2 = "The Munsters are creepy in a good way."
#puts munsters_description2.swapcase!
munsters_description3 = "The Munsters are creepy in a good way."
#puts munsters_description3.downcase!
munsters_description4 = "The Munsters are creepy in a good way."
#puts munsters_description4.upcase!

ages = { "Herman" => 32, "Lily" => 30, "Grandpa" => 5843, "Eddie" => 10 }
ages.merge!({"Marilyn" => 22, "Spot" => 237})

#puts ages.values.min

advice = "Few things in life are as important as house training your pet dinosaur."
#p advice.match("Dino")

flintstones = %w(Fred Barney Wilma Betty BamBam Pebbles)

flintstones.map! {|name| name[0, 3]}
#puts flintstones


advice = "Few things in life are as important as house training your pet dinosaur."
#p advice.split(' ').slice!(0..7)
#p advice.slice!(0, advice.index('house'))

statement = "The Flintstones Rock!"
#p statement.count('t')
#p statement.scan('t').count

title = "Flintstone Family Members"
p title.center(40)
