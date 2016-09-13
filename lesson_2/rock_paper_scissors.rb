VALID_CHOICES = %w(rock paper scissors)

def prompt(message)
  puts("=> #{message}")
end

def win?(first, second)
  (first == 'rock' && second == 'scissors') || (first == 'paper' &&
    second == 'rock') || (first == 'scissors' && second == 'paper')
end

def display_result(player, computer)
  if win?(player, computer)
    # prompt("You won!")
    return "You won"
  elsif win?(computer, player)
    # prompt('Computer won!')
    return "You lost"
  else
    # prompt("It's a tie!")
    return "It's a tie"
  end
end  

loop do
  choice = ''
  loop do
    prompt("Choose one: #{VALID_CHOICES.join(', ')}")
    choice = gets.chomp

    if VALID_CHOICES.include?(choice)
      break
    else
      prompt("That's not a valid choice")
    end
  end

  computer_choice = VALID_CHOICES.sample

  prompt("You chose #{choice}. Computer chose #{computer_choice}")

  puts display_result(choice, computer_choice)

  win_count()

  prompt("Do you want to play again? Type Y")
  answer = gets.chomp
  break unless answer.downcase.start_with?('y')
end

prompt("Thanks for playing!")
