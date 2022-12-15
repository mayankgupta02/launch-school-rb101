=begin
arr = (1..99).to_a
arr.each { |num| puts num if num % 2 == 1 }
=end

1.upto(99) { |num| puts num if num % 2 == 1 }