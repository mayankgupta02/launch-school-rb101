=begin

Problem _________________________
Input: string
Output: string

Implicit rules: 
1. String will contain only words and spaces
2. For string to reverse, it will have to contain more than or equal to 5 words
3. Capital letters should remain capital

Data structure _________________________
1. Need to split into array to map
2. Need to concatenate back into string

Algorithm _________________________
1. Take in argument in method
2. Split into array, using " " as delimiter
3. Use map to reverse if word length is >= 5 letters 
4. Use join to concatenate back into string, using " " as delimiter
5. Return answer
=end

def reverse_words(str)
  arr = str.split
  reversed_arr = arr.map do |word|
    if word.size >= 5
      word.reverse
    else
      word
    end
  end
  reversed_arr.join(" ")
end


puts reverse_words('Professional')          # => lanoisseforP
puts reverse_words('Walk around the block') # => Walk dnuora the kcolb
puts reverse_words('Launch School')         # => hcnuaL loohcS