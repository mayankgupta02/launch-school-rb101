=begin
PROBLEM______________________
Input: Series of five integers
Output: String, whether or not an integer falls in the series of five integer

Rules: 
1. Numbers should be positive integers


EXAMPLES____________________



ALGORITHM___________________
1. GET six inputs from users
2. SET first five inputs to an array
3. Check whether the sixth input is already in the array. PRINT statement accordingly
=end

puts "==> Enter the 1st number:"
num_1 = gets.chomp.to_i

puts "==> Enter the 2nd number:"
num_2 = gets.chomp.to_i

puts "==> Enter the 3rd number:"
num_3 = gets.chomp.to_i

puts "==> Enter the 4th number:"
num_4 = gets.chomp.to_i

puts "==> Enter the 5th number:"
num_5 = gets.chomp.to_i

puts "==> Enter the 6th number:"
num_6 = gets.chomp.to_i

arr = [num_1, num_2, num_3, num_4, num_5]

if arr.include?(num_6)
  puts "The number #{num_6} appears in #{arr}"
else
  puts "The number #{num_6} does not appear in #{arr}"
end
  