def welcome
  puts "Welcome to the Blackjack Table"
end

def deal_card
  rand(1..11)# code #deal_card here
end

def display_card_total(total)
  puts "Your cards add up to #{total}"# code #display_card_total here
end

def prompt_user
  puts "Type 'h' to hit or 's' to stay"
end

def get_user_input
  gets.chomp
end

def end_game(total)
  puts "Sorry, you hit #{total}. Thanks for playing!"# code #end_game here
end

def initial_round
  total = (deal_card+deal_card)
  print display_card_total(total)
  return total
end

def hit?(total)
  prompt_user
  input = get_user_input
  if input == "h"
    ntotal = total + deal_card
  elsif  input == "s"
    ntotal = total
  else
    invalid_command
    hit?(total)
  end
  ntotal

end

def invalid_command
  puts "Please enter a valid command"# code invalid_command here
end

#####################################################
# get every test to pass before coding runner below #
#####################################################

def runner
  welcome
  total = initial_round
  if total < 21
    hit?(total)
    display_card_total(total)


end
end_game(total)
end
