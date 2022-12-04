=begin

Problem _________________________
Input: array of positive integers
Output: integer, average of all the numbers in the array

Implicit rules: 
1. Integers will always be positive
2. Array will never be empty
3. Average is always an integer

Modelling _________________________
[1, 4, 8] 
(1 + 4 + 8) / 3



Algorithm _________________________
1. Initialise an variable as 0
2. Use each method to iterate over array. On each iteration, add the current element to the existing sum
3. Divide by the size of the array, and return the result
=end

def average(arr)
  sum = 0
  arr.each {|num| sum += num }
  float_sum = sum / arr.size
end
  



puts average([1, 6]) == 3 # integer division: (1 + 6) / 2 -> 3
puts average([1, 5, 87, 45, 8, 8]) == 25
puts average([9, 47, 23, 95, 16, 52]) == 40