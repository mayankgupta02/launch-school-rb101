=begin
PROBLEM______________________
Input: Two floats
Output: String, with string interpolation

Rules: 
1. The output for both metres and ft should be float
2. The first output should be in 1 d.p., the other should be in 2 d.p.


EXAMPLES____________________
7 * 10 = 70.0
70.0 * 10.7639 = 753.47


ALGORITHM___________________
1. Get both measurements from user
2. SET it to width and height respecively. Convert to float variables
3. Multiply it together to find square metres, round to 1 d.p.
4. Multiple area in square metres by 10.7639 and round to 2 d.p.
5. Send output to user in a string
=end

puts "Enter the length of the room in meters:"
length = gets.chomp.to_f

puts "Enter the width of the room in meters:"
width = gets.chomp.to_f

area_sqm = (length * width).round(1)
area_sqft = (area_sqm * 10.7639).round(2)

puts "The area of the room is #{area_sqm} square meters (#{area_sqft} square feet)."

