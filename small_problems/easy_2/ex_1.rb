def get_name
  puts "What is your name?"
  name = gets.chomp
  
  case
  when name.empty? then "Teddy"
  when name then name
  end
end

name = get_name

age = (20..200).to_a.sample
puts "#{name} is #{age} years old"