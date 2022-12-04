=begin
Take in two arguments, a string and a number "n"
Loop over the statements n times, print out the string on each iteration
=end


def repeat(str, num)
  num.times do { puts str }
end


repeat('Hello', 3)
repeat('Hi!', 5)