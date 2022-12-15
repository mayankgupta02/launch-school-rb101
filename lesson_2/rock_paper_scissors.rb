require "pry"

VALID_CHOICES = ["rock", "paper", "scissors", "lizard", "spock"]

def prompt(message)
  puts ">> #{message}"
end

def get_full_choice(abbreviation)
  selected_choice = VALID_CHOICES.select do 
    |choice| choice.start_with?(abbreviation)
  end
  selected_choice.join
end

def win?(first, second)
  (first == "rock" && second == "scissors") ||
    (first == "paper" && second == "rock") ||
    (first == "scissors" && second == "paper") ||
    (first == "rock" && second == "lizard") ||
    (first == "lizard" && second == "spock") ||
    (first == "spock" && second == "scissors") ||
    (first == "scissors" && second == "lizard") ||
    (first == "lizard" && second == "paper") ||
    (first == "paper" && second == "spock") ||
    (first == "spock" && second == "rock") 
end

def display_results(player, computer_player)
  if win?(player, computer_player)
    prompt("You won!")
  elsif win?(computer_player, player)
    prompt("Computer won!")
  else 
    prompt("It's a tie")
  end
end

def get_scores(player, computer_player, score_hash)
  if win?(player, computer_player)
    score_hash[:player_score] += 1
  elsif win?(computer_player, player)
    score_hash[:computer_score] += 1
  end
end

full_choice = ""
score_keeper = {
  player_score: 0,
  computer_score: 0
}

prompt("Welcome to RPSLS. First player to win 3 times is the grand winner!")

loop do
  loop do
    prompt("Choose one: #{VALID_CHOICES.join(', ')}. You can also just type the first letter of your choice. For scissors, type 'sc'. For spock, type 'sp'")
    choice_abbreviated = gets.chomp.downcase
    
    full_choice = get_full_choice(choice_abbreviated)
    
    break if VALID_CHOICES.include?(full_choice)
    puts "Oops.. that wasn't valid choice. Try again!"
  end
  
  computer_choice = VALID_CHOICES.sample
  puts "You chose #{full_choice}; computer chose #{computer_choice}"
  
  display_results(full_choice, computer_choice)

  get_scores(full_choice, computer_choice, score_keeper)
  puts "Your score: #{score_keeper[:player_score]}, computer score: #{score_keeper[:computer_score]}"
  
  break if (score_keeper[:player_score] == 3) || (score_keeper[:computer_score] == 3)
  
  prompt("Would you like to play again? (Y/N)")
  answer = gets.chomp.downcase
  break unless answer.start_with?("y")
end

prompt("Computer is the grand winner!") if score_keeper[:computer_score] == 3
prompt("You are the grand winner!") if score_keeper[:player_score] == 3