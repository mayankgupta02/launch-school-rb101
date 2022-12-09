=begin

Problem ______________
Input: loan amount as integer, APR as float, Loan duration as integer
Output: Monthly payment, as float

Rules:


Examples ______________
1000 principal, 20% APR, 5 year duration = $26.49


Data Structures ______________
Dealing only with numbers, no arrays or hashes necessary

Algorithm ______________
1. Take input from user on loan amount, APR, loan duration
2. Conver intputs from string to integer / float
3. Use formula given in answer prompt to calculate monthly payments

Optional:
1. Wrap messages to users as prompt =>
2. Check if numbers given by users are in the right format
3. Put prompts in a separate configuration file
4. Check if user wants to make another calculation
=end

require 'pry'

def prompt(message)
  puts "=> #{message}"
end

def valid_float?(num)
  Float(num, exception: false) && num.to_f > 0
end

def valid_integer?(num)
  Integer(num, exception: false) && num.to_i > 0
end

loop do
  principal = ""
  annual_interest = ""
  yearly_duration = ""
  
  loop do
    prompt("What is your principal?")
    principal = gets.chomp
    if valid_integer?(principal)
      break
    else
      prompt("That number wasn't valid, try again")
    end
  end
  
  loop do
    prompt("What is your annual interest? Type the % as a number, e.g. 21.5% should be typed as 21.5")
    annual_interest = gets.chomp
    if valid_float?(annual_interest)
      break
    else
      prompt("That number wasn't valid, try again")
    end
  end
  
  loop do
    prompt("What is the loan duration in years?")
    yearly_duration = gets.chomp
    if valid_float?(yearly_duration)
      break
    else
      prompt("That number wasn't valid, try again")
    end
  end
  
  principal = principal.to_i
  monthly_interest = annual_interest.to_f / (12*100)
  duration_months = yearly_duration.to_f * 12
  
  monthly_payment = principal * ( monthly_interest / (1 - (1 + monthly_interest)**(-duration_months)))
  
  prompt("Your monthly payment is: #{monthly_payment.round(2)}")
  
  prompt("Do you want to make another calculation? (Press Y to calculage again)")
  answer = gets.chomp
  
  break unless answer.downcase.start_with?('y')
end

prompt("Thanks for using the mortgage calculator. Good bye!")

  
