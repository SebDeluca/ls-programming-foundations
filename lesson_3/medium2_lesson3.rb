munsters = {
  "Herman" => { "age" => 32, "gender" => "male" },
  "Lily" => { "age" => 30, "gender" => "female" },
  "Grandpa" => { "age" => 402, "gender" => "male" },
  "Eddie" => { "age" => 10, "gender" => "male" }
}

#total_age = 0
#munsters.each do |name, data|
#  if data["gender"] == "male"
#    total_age += data["age"]
#  else
#    next
#  end
#end

#puts total_age

#munsters.each do |name, details|
#  puts "#{name} is a #{details["age"]} year old #{details["gender"]}"
#end

sentence = "Humpty Dumpty sat on a wall."

#p sentence.split(/\W/).reverse!.join(' ') + '.'

answer = 42

def mess_with_it(some_number)
  some_number += 8
end

new_answer = mess_with_it(answer)

p answer - 8

puts rps("paper", "rock")
