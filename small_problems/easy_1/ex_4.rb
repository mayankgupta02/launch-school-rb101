=begin
Take in array as an argument
Identify which parts of the array are unique
Loop over the unique array, and check how many instances of each element there are in the full array using a nested loop
Data should go into a heash, where the key is the vehicle name, and the number of instances is the value
=end

def count_occurrences(arr)
  h = {}
  unique_arr = arr.uniq
  
  unique_arr.each do |unique_word|
    counter = 0
    arr.each do |word|
      counter += 1 if unique_word == word
    end
    
    h[unique_word] = counter
  end
  h
end
    

vehicles = [
  'car', 'car', 'truck', 'car', 'SUV', 'truck',
  'motorcycle', 'motorcycle', 'car', 'truck'
]

p count_occurrences(vehicles)