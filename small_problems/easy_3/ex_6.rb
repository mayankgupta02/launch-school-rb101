=begin
PROBLEM______________________
Input: Two values
Output: Boolean value

Rules: 
1. Return a boolean value


EXAMPLES____________________



ALGORITHM___________________
1. Define method, and take in two arguments
2. IF only one of the values is truthy, then return true
   ELSE return false
=end

def xor?(a,b)
  if ( a == true && b == false ) || ( a == false && b == true )
    true
  else
    false
  end
end

puts xor?(5.even?, 4.even?)
puts xor?(5.odd?, 4.odd?)
puts xor?(5.odd?, 4.even?)
puts xor?(5.even?, 4.odd?)