# ask the user for two numbers
# ask the user for an operation to perform
# perform the operation on the numbers
# output the results

Kernel.puts("Welcome to the calculator")
Kernel.puts("What's the first number?")
num1 = gets.chomp
Kernel.puts("You typed in #{num1}.")

Kernel.puts("What's the second number?")
num2 = gets.chomp
Kernel.puts("You're second number is #{num2}.")

puts "What operation would you like to perform? 1) add 2) subtract 3) multiply 4)divide"
operator = gets.chomp

if operator == "1"
  result = num1.to_i + num2.to_i
  puts result
elsif operator == "2"
  result = num1.to_i - num2.to_i
  puts result
elsif operator == "3"
  result = num1.to_i * num2.to_i
  puts result
else operator == "4"
  result = num1.to_f / num2.to_f
  puts result
end
