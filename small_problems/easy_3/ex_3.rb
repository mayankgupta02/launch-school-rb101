=begin
PROBLEM______________________
Input: String of a single or multiple words
Output: String that shows the number of characters in the input

Rules: 
1. Don't count punctuations


EXAMPLES____________________



ALGORITHM___________________
1. GET input from user and SET to a variable "input_str"
2. Split the input_str into an array, and then join it back together to remove the spaces
3. Output string that shows the number of characters
=end

input_str = ""
loop do
  puts "Please write word or multiple words:"
  input_str = gets.chomp
  break unless input_str.empty?
  puts "Oops.. you didn't type anything"
end

characters = input_str.split(" ").join

puts "There are #{characters.length} characters in \"#{input_str}\"" 
