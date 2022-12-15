=begin
PROBLEM______________________
Input: Integer
Output: Integer, sum or product of 1 until the input integer

Rules: 
1. Operation is inclusive of the number given by the input
2. Input is a positive integer


EXAMPLES____________________



ALGORITHM___________________
1. Ask user for a positive integer (GET), SET to a variable
2. Convert variable to integer
3. Use the input integer to create a range of numbers, convert to an array and SET to a variable
4. GET input from user on whether they want to sum or product
5. SET output variable to zero
5. IF sum, then iterate over the array and sum the output variable + array number
   ELSIF product, then SET output variable to 1, and iterate over the array and multiply the output variable with the array number
6. PRINT the output
=end

puts ">> Please enter an integer greater than 0:"
num = gets.chomp.to_i

puts ">> Enter 's' to compute the sum, 'p' to compute the product."
operation = gets.chomp

arr = (1..num).to_a
output = 0

if operation == "s"
  operation_name = "sum"
  output = arr.inject(:+)
elsif operation == "p"
  operation_name = "product"
  output = arr.inject(:*)
end

puts "The #{operation_name} of the integers between 1 and #{num} is #{output}"

