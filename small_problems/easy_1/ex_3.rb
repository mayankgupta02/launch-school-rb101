=begin
Take in a positive integer
Convert it to a string
Split the string into an array
Convert each element into an integer
Return the array
=end

def digit_list(num)
  arr = num.to_s.split("")
  arr.map! { |x| x.to_i }
  return arr
end

puts digit_list(12345) == [1, 2, 3, 4, 5]     # => true
puts digit_list(7) == [7]                     # => true
puts digit_list(375290) == [3, 7, 5, 2, 9, 0] # => true
puts digit_list(444) == [4, 4, 4]             # => true