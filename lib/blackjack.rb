def welcome
  puts "Welcome to the Blackjack Table"
end

def deal_card
  random_number = rand(1..11)
end

def display_card_total(card_total)
  puts "Your cards add up to #{card_total}"
end

def prompt_user
  puts "Type 'h' to hit or 's' to stay"
end

def get_user_input
  user_input = gets.chomp
end

def end_game(players_card_total)
  puts "Sorry, you hit #{players_card_total}. Thanks for playing!"
end

def initial_round
  round1 = deal_card
  round2 = deal_card
  sum = round1 + round2
  display_card_total(sum)
  sum
end

def hit?(current_card_total)
  prompt_user
  user_input = get_user_input
  if user_input == "h"
    new_cards = deal_card
    current_card_total += new_cards
  elsif user_input == "s"
    current_card_total
  else
    invalid_command
    prompt_user
    user_input = get_user_input
  end
  current_card_total
end

def invalid_command
  puts "Please enter a valid command"
end

#####################################################
# get every test to pass before coding runner below #
#####################################################

def runner
  welcome
  total = initial_round
  while total < 21
  total = hit?(total)
  display_card_total(total)
  end
end_game(total)

end
    
