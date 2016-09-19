arr = [1, 2, 3, 4, 5]

counter = 0
sum = 0
loop do
  sum += arr[counter]
  counter += 1

  break if counter == arr.size-1
end

puts "your sum is #{sum}"
