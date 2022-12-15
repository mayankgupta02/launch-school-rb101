=begin
PROBLEM______________________
Input: Two strings
Output: Two strings, with string interpolation

Rules: 
1. Ages should be integer


EXAMPLES____________________
1. Age: 25, Retirement: 65, Year of Retirement: 2062, Time: 40 years


ALGORITHM___________________
1. Ask the user for current age and retirement age and SET to variables
2. Convert variables to integers
3. SET the difference between current age and retirement age to a variable called time to retirement
4. Get the current year, and add the retirement time to current year to get retirement year
5. Print relevant strings to user showing retirement time and retirement year
=end

CURRENT_YEAR = Time.now.year

puts "What is your age?"
age = gets.chomp.to_i

puts "At what age would you like to retire?"
retirement_age = gets.chomp.to_i

years_to_retirement = retirement_age - age
retirement_year = CURRENT_YEAR + years_to_retirement

puts "It's #{CURRENT_YEAR}. You will retire in #{retirement_year}."
puts "You have only #{years_to_retirement} years of work to go!"