=begin
PROBLEM______________________
Input: String
Output: String

Rules: 
1. If the user writes "name!" then the computer yells back to the user.


EXAMPLES____________________



ALGORITHM___________________
1. Ask user for their name
2. If the user's name has an exclamation at the end, 
    Chop the last character of the string
    Show some output
   Else just say "Hello name"
=end

puts "What's your name?"
name = gets.chomp

if name.end_with?("!")
  puts "Hello #{name.chop}. Why are we screaming?".upcase
else
  puts "Hello #{name}"
end