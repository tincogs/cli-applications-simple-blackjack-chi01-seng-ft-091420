require 'pry'
def welcome
  puts "Welcome to the Blackjack Table"
end

def deal_card
  up_card = rand(1..11)
  return up_card
end

def display_card_total(card_total)
  puts "Your cards add up to #{card_total}"
end

def prompt_user
  puts "Type 'h' to hit or 's' to stay"
end

def get_user_input
  gets.chomp
end

def end_game(card_total)
  puts "Sorry, you hit #{card_total}. Thanks for playing!"
end

def initial_round
  card_total = [deal_card, deal_card].sum
  display_card_total(card_total)
  hand = card_total
  return hand
end

def invalid_command
  puts "Please enter a valid command"
end

def hit?(hand)
  user_prompt = prompt_user
  user_choice = get_user_input

  case user_choice
  when 's'
    return hand
  when 'h'
    hand += deal_card
  else 
    invalid = invalid_command
    invalid
    user_prompt
  end
  hand
end


#####################################################
# get every test to pass before coding runner below #
#####################################################

def runner
  # code runner here
end
    
