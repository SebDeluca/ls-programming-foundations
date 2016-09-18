SUITS = ['H', 'D', 'S', 'C'].freeze
VALUES = ['2', '3', '4', '5', '6', '7', '8', '9', '10', 'J', 'Q', 'K', 'A'].freeze

def prompt(msg)
  puts "=> #{msg}"
end

def initialize_deck
  SUITS.product(VALUES).shuffle
end

def total(cards)
  values = cards.map { |card| card[1] }

  sum = 0
  values.each do |value|
    if value == 'A'
      sum += 11
    elsif value.to_i.zero?
      sum += 10
    else
      sum += value.to_i
    end
  end

  values.select { |value| value == 'A' }.count.times do
    sum -= 10 if sum > 21
  end

  sum
end

def busted?(cards)
  if total(cards) > 21
    true
  else
    false
  end
end

def detect_results(dealer_cards, player_cards)
  player_total = total(player_cards)
  dealer_total = total(dealer_cards)

  if player_total > 21
    :player_busted
  elsif dealer_total > 21
    :dealer_busted
  elsif dealer_total < player_total
    :player
  elsif dealer_total > player_total
    :dealer
  else
    :tie
  end
end

def display_results(dealer_cards, player_cards)
  result = detect_results(dealer_cards, player_cards)

  case result
  when :player_busted
    prompt "You busted! Dealer wins!"
  when :dealer_busted
    prompt "Dealer busted! You win!"
  when :player
    prompt "You win!"
  when :dealer
    prompt "Dealer wins!"
  when :tie
    prompt "It's a tie!"
  end
end

def play_again?
  puts "--------"
  prompt "Do you want to play again? (y or n)"
  answer = gets.chomp
  answer.downcase.start_with?('y')
end

# Game starts
loop do
  prompt "Welcome to 21!"

  deck = initialize_deck
  player_cards = []
  dealer_cards = []

  # initial deal
  2.times do
    player_cards << deck.pop
    dealer_cards << deck.pop
  end

  prompt "Dealer has a #{dealer_cards[0]} and ?"
  prompt "You have a #{player_cards[0]} and #{player_cards[1]} for a total
          of #{total(player_cards)}."

  # player turn
  loop do
    player_turn = nil

    loop do
      prompt "Would you like to hit or stay? (hit, stay)"
      player_turn = gets.chomp.downcase

      break if ["hit", "stay"].include?(player_turn)
      prompt "Sorry, must enter hit or stay"
    end

    if player_turn == "hit"
      player_cards << deck.pop
      prompt "You hit!"
      prompt "Your cards are now #{player_cards}."
      prompt "Your total is #{total(player_cards)}."
    end

    break if player_turn == "stay" || busted?(player_cards)
  end

  if busted?(player_cards)
    display_results(dealer_cards, player_cards)
    play_again? ? next : break
  else
    prompt "You stayed at #{total(player_cards)}."
  end

  # dealer turn
  prompt "Dealer's turn..."

  loop do
    break if busted?(dealer_cards) || total(dealer_cards) >= 17

    prompt "Dealer hits!"
    dealer_cards << deck.pop
    prompt "Dealer's cards are now #{dealer_cards}."
  end

  if busted?(dealer_cards)
    prompt "Dealer total is now #{total(dealer_cards)}."
    display_results(dealer_cards, player_cards)
    play_again? ? next : break
  else
    prompt "The dealer stays at #{total(dealer_cards)}."
  end

  # Both player and dealer stays
  puts "======"
  prompt "Dealer has #{dealer_cards}, for a total of: #{total(dealer_cards)}."
  prompt "Player has #{player_cards}, for a total of: #{total(player_cards)}."
  puts "======"

  display_results(dealer_cards, player_cards)

  break unless play_again?
end

prompt "Thanks for playing!"
