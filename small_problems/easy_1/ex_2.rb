=begin
Take in integer as an argument
Check if the number is divisible by 2, and if not, then it's odd. Return as true or false
=end

def is_odd?(num)
  num.remainder(2) == 1 || num.remainder(2) == -1
end

puts is_odd?(2)    # => false
puts is_odd?(5)    # => true
puts is_odd?(-17)  # => true
puts is_odd?(-8)   # => false
puts is_odd?(0)    # => false
puts is_odd?(7)    # => true