=begin
advice = "Few things in life are as important as house training your pet dinosaur."

advice.sub!("important", "urgent")
puts advice


numbers = [1, 2, 3, 4, 5]
numbers.delete(1)
puts numbers

number = gets.chomp.to_i

number.between?(10,100)


def four_score(string)
  puts "Four score and #{string}"
end

famous_words = "seven years ago..."

p four_score(famous_words)

p famous_words.prepend("Four score and ")


def add_eight(number)
  number + 8
end

number = 2

how_deep = "number"
5.times { how_deep.gsub!("number", "add_eight(number)") }

p how_deep
p eval(how_deep)
=end

#flintstones = { "Fred" => 0, "Wilma" => 1, "Barney" => 2, "Betty" => 3, "BamBam" => 4, "Pebbles" => 5 }
#flintstones_array = flintstones.to_a
#barney = flintstones_array[2]
#puts barney

# OR

#flintstones.assoc("Barney")

flintstones = ["Fred", "Barney", "Wilma", "Betty", "Pebbles", "BamBam"]

hash = {}
flintstones.each_with_index do |name, index|
  hash[name] = index
end
puts hash
