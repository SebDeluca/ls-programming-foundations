def valid_number?(number_string)
  number_string.to_i.to_s == number_string
end

puts "=> You are going to divide a number by another number"

number_1 = nil
number_2 = nil
loop do
  puts "Enter 1st number"
  number_1 = gets.chomp

  puts "Enter 2nd number"
  number_2 = gets.chomp

  break unless number_2.to_i == 0 || valid_number?(number_1) == false ||
               valid_number?(number_2) == false
  puts "Second number cannot be 0"
end

divide = number_1.to_i / number_2.to_i

puts divide
