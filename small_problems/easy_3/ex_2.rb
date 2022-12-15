=begin
PROBLEM______________________
Input: Two integers
Output: String, that demonstrates the operation and the output

Rules: 
1. Input should be positive integers
2. Output should be positive integer


EXAMPLES____________________



ALGORITHM___________________
1. GET two inputs from users
2. Calculate output for each of the following operations for each user: addition, subtraction, multiplication, division, modulo, exponent
3. Print each output showing the operation
=end

puts "==> Enter the first number:"
int1 = gets.chomp.to_i

puts "==> Enter the second number:"
int2 = gets.chomp.to_i

add = int1 + int2
subtract = int1 - int2
multiply = int1 * int2
divide = int1 / int2
modulo = int1 % int2
exponent = int1 ** int2

puts "#{int1} + #{int2} = #{add}"
puts "#{int1} - #{int2} = #{subtract}"
puts "#{int1} * #{int2} = #{multiply}"
puts "#{int1} / #{int2} = #{divide}"
puts "#{int1} % #{int2} = #{modulo}"
puts "#{int1} ** #{int2} = #{exponent}"