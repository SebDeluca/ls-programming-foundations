# This program will help a user discover their monthly mortgage payments

def prompt(text)
  puts "=> #{text}"
end

prompt('This is your personal mortgage calculator')

loop do
  prompt('What is your total loan amounts? Please use numbers only: ')
  loan_total = ''
  loop do
    loan_total = gets.chomp

    if loan_total.empty? || loan_total.to_f < 1
      prompt('Must enter a positive number')
    else
      break
    end
  end

  prompt('What is your APR? Ex. For 5%, type in .05: ')
  apr = gets.chomp.to_f

  prompt('Finally, what is your loan duration, in years?
  Ex. 30 years, type 30: ')

  duration_in_years = gets.chomp.to_i

  # This is where we perform calculations
  monthly_interest_rate = apr / 12
  duration_in_months = duration_in_years * 12

  monthly_payment = loan_total.to_f * (monthly_interest_rate /
  (1 - (1 + monthly_interest_rate)**-duration_in_months))

  prompt("Your monthly payments will be: $#{monthly_payment.round(2)}")

  prompt('Would you like to calculate another mortgage? Type Y if so:')
  answer = gets.chomp
  break unless answer.downcase.start_with?('y')
end
