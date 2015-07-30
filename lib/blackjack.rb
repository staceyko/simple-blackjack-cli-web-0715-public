def deal_card
    # code #deal_card here
    rand(1..11)
end

def display_card_total(card_total)
    # code #display_card_total here
    puts "Your cards add up to #{card_total}"
    
end

def welcome
    # code #welcome here
    puts "Welcome to the Blackjack Table"
end

def prompt_user
    # code #prompt_user here
    puts "Type 'h' to hit or 's' to stay"
end

def initial_round
    # code #initial_round here
    card1 = deal_card
    card2 = deal_card
    sum = card1 + card2
    display_card_total(sum)
    return sum
end

def end_game(card_total)
    # code #end_game here
    puts "Sorry, you hit #{card_total}. Thanks for playing!"
end

def get_user_input
    # code #get_user_input here
    gets.chomp
end

def hit?(card_total)
    # code hit? here
    prompt_user
    input = get_user_input
    if input == "s"
        return card_total
        elsif input == "h"
        return card_total + deal_card
    end
end

def invalid_command
    # code invalid_command here
    puts "Invalid command, please try again!"
end

#####################################################
# get every test to pass before coding runner below #
#####################################################

def runner
    welcome
    card_total = initial_round
    until card_total > 21 do
        card_total = hit?(card_total)
        display_card_total(card_total)
    end
    
    end_game(card_total)
    end
    