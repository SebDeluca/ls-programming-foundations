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

=end

def add_eight(number)
  number + 8
end

number = 2

how_deep = "number"
5.times { how_deep.gsub!("number", "add_eight(number)") }

p how_deep
p eval(how_deep)
