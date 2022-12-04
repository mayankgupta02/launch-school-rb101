=begin

Problem _________________________
Input: positive integer, boolean
Output: positive integer

Implicit rules: 
1. Integers will always be positive
2. Return the bonus only, not total comp

Modelling _________________________
5000, true == 2500


Algorithm _________________________
1. Take in argument as num and boolean
2. Initialise bonus as 0
3. Bonus will be half of salary if boolean is true
4. Return bonus
=end


def calculate_bonus(num, boolean)
  bonus = boolean ? num / 2: 0
end
  
  
puts calculate_bonus(2800, true) == 1400
puts calculate_bonus(1000, false) == 0
puts calculate_bonus(50000, true) == 25000
