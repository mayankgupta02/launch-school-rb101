=begin

Problem _________________________
Input: positive integer
Output: integer, sum of all the positive integers

Implicit rules: 
1. Integers will always be positive
2. Sum will be positive integer
3. Don't use any looping methods

Modelling _________________________
48
4 + 8 = 12


Algorithm _________________________
1. Take in argument as num
2. Split num into an array using digits method
3. Use reduce to sum up all the individual numbers in the array, and return
=end


def sum(num)
  num.digits.reduce(:+)
end

puts sum(23) == 5
puts sum(496) == 19
puts sum(123_456_789) == 45