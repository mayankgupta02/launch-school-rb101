=begin
PROBLEM______________________
Input: Two floats
Output: Two strings, with string interpolation

Rules: 
1. The output should be in 1 d.p.


EXAMPLES____________________
Bill - $10
Tip rate - 10%
Tip = 1
Total = 11


ALGORITHM___________________
1. Ask the user for the bill amount and tip rate and SET to variables
2. Convert variables to float
3. Multiply together the bil amount and the (tip rate / 100)
4. Output the tip amount and the total bill
=end

puts "What is the bill?"
bill = gets.chomp.to_f

puts "What is the tip percentage?"
tip_rate = gets.to_f

tip_amount = (bill * (tip_rate / 100)).round(2)
total_bill = (bill + tip_amount).round(2)

puts "The tip is #{sprintf("%.2f", tip_amount)}"
puts "The bill is #{sprintf("%.2f", total_bill)}"