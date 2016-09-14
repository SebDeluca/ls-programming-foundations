10.times { |phrase| puts (" " * phrase) + "The Flintstones Rock!" }

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

p frequency
