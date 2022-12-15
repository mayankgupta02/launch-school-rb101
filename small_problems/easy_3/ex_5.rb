def multiply(a,b)
  a * b
end

def positive_exponent(a,b)
  result = 1
  
  if b.even?
    (b/2).times do
      result *= multiply(a,a)
    end
  elsif b.odd?
    ((b-1) / 2).times do
      result *= multiply(a,a)
    end
    result *= a
  else
    result = 1
  end
  result
end

puts positive_exponent(2,10)