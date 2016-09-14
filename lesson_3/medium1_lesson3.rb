#10.times { |phrase| puts (" " * phrase) + "The Flintstones Rock!" }

statement = "The Flintstones Rock"

characters = statement.split('')

frequency = {}
characters.each do |char|
  if frequency.keys.include?(char)
    frequency[char] += 1
  else
    frequency[char] = 1
  end
end

#p frequency

def factors(number)
  dividend = number
  divisors = []
  while dividend > 0 do
    divisors << number / dividend if number % dividend == 0
    dividend -= 1
  end until dividend == 0
  divisors
end

#p factors(0)

#$limit = 15

def fib(lim, first_num, second_num)
  while second_num < lim
    sum = first_num + second_num
    first_num = second_num
    second_num = sum
  end
  sum
end

#result = fib(15, 0, 1)
#puts "result is #{result}"

def titleize(str)
  p str.split.map! {|word| word.downcase.capitalize!}.join(' ')
end

#titleize("This is a test")

munsters = {
  "Herman" => { "age" => 32, "gender" => "male" },
  "Lily" => { "age" => 30, "gender" => "female" },
  "Grandpa" => { "age" => 402, "gender" => "male" },
  "Eddie" => { "age" => 10, "gender" => "male" },
  "Marilyn" => { "age" => 23, "gender" => "female"}
}

munsters["Herman"].merge("age_group" => "adult")

munsters.each do |name, details|
  case details["age"]
  when 0..18
    details["age_group"] = "kid"
  when 18..65
    details["age_group"] = "adult"
  else
    details["age_group"] = "senior"
  end
end

p munsters

=begin
munsters.each do |k, v|
  case v
  when v < 18
    v << {"age group" => "kid"}
  when v > 18 && v < 65
    v << {"age group" => "adult"}
  when v > 65
    v << {"age group" => "senior"}
  end
end
=end
