=begin
Exercise 1

START
 Given two numbers
 
 SET sum_of_numbers = number1 + number2
END
=end

=begin
Exercise 2

START
Given an array of strings

SET combined_strings = Use join method on the array
END
=end

=begin
Exercise 3

START
Given an array of integers

SET short_array = Select only those elements that have an even index in array
END
=end

=begin
Exercise 4

START
Given a target character, and a string

Split the string into an array
SET iterator = 0
SET count = 0

WHILE iterator < size of the array
  IF the nth value of array == target character
    count += 1
  END
END

IF count >= 3
  RETURN count
ELSE
  RETURN nil
END
=end

=begin
Exercise 5

Given a nested array of integers

SET iterator = 0
SET iterator_1st method = 0
SET iterator_2nd method = 0
SET new_array

WHILE iterator < size of flattened array
  IF the nth value of the array is even
    push value of [iterator_1st] element in the 1st nested array in new_array
    iterator_1st += 1
  ELSE
    push value of [iterator_2nd] element in the 2nd nested array in new_array
    iterator_2nd += 1
  END
  
  iterator += 1
  new_array
END
=end