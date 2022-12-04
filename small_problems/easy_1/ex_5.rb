=begin
1. Create a method that takes in one string argument
2. Split the string into an array arr
3. Initialise an empty array new_arr
4. Loop over the array, and use the unshift method to add the elements as the first element of new_arr
5. Return new_arr
=end

def reverse_sentence(str)
  arr = str.split
  new_arr = []
  arr.each do |word|
    new_arr.unshift(word)
  end
  new_str = ""
  
  new_arr.each { |word| new_str << word + " "}
  p new_str.rstrip
end
  
puts reverse_sentence('Hello World') == 'World Hello'
puts reverse_sentence('Reverse these words') == 'words these Reverse'
puts reverse_sentence('') == ''
puts reverse_sentence('    ') == '' # Any number of spaces results in ''