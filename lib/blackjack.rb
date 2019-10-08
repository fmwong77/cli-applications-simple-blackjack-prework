def welcome
  puts "Welcome to the Blackjack Table"
end

def deal_card
  return rand(1..11)
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
  card1 = deal_card()
  card2 = deal_card()
  
  sum = card1 + card2
  display_card_total(sum)
  return sum
end

def invalid_command()
  puts "Please enter a valid command"
end

def hit?(card_total)
  prompt_user()
  user_input = get_user_input()
  if user_input == "s"
    card_total
  elsif user_input == "h"
    card_total += deal_card()
  else
    invalid_command()
    prompt_user()
    get_user_input()
  end
  return card_total
end

#####################################################
# get every test to pass before coding runner below #
#####################################################

def runner
<<<<<<< HEAD
  welcome #introduce the game
  # sleep 0.75
  card_total = initial_round #determine your current total & tell user what number they currently have
  until card_total > 21 #continue game until user loses
    card_total = hit?(card_total)
    display_card_total(card_total)
  end
  end_game(card_total) #prints out once user has lost
=======
  welcome()
  initial_round()
  prompt_user()
  input = user_input()
  if input == "s"
    user_input()
  elsif input == "h"
    deal_card()
  end
  end
>>>>>>> 342049b6e4b3a735dca55033bab18ff2139fdadb
end
    
