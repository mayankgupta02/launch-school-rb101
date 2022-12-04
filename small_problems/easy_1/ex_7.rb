=begin

Problem _________________________
Input: positive integer
Output: string of 1s and 0s, always starting with 1 

Implicit rules: 
1. Output string will always start with one

Data structure _________________________


Algorithm _________________________
1. Take in argument in method as num
2. Initialise counter as 1
3. Initialise empty string
4. Loop over the contents, until counter > num
5. Use conditionals to determine whether the number should be 1 or 0. If counter is odd, then "1". If even, then "0"
6. Within conditional, concatenate "1" "0" to initialised empty string
=end

def stringy(num, order = 1)
  counter = 1
  str = ""
  
  until counter > num do
    if order == 1
      str << (counter.odd? ? "1": "0")
    else
      str << (counter.odd? ? "0": "1")
    end
    counter +=1
  end
  str
end

puts stringy(6) == '101010'
puts stringy(9) == '101010101'
puts stringy(4) == '1010'
puts stringy(7) == '1010101'