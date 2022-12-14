require "pry"
require "yaml"
MESSAGES = YAML.load_file('calculator_messages.yml')

p MESSAGES

def prompt(message)
  puts("=> #{message}")
end

def valid_number?(number)
  Integer(number, exception: false) || Float(number, exception: false)
end

def operation_to_message(op)
  case op
  when '1'
    'Adding'
  when '2'
    'Subtracting'
  when '3'
    'Multiplying'
  when '4'
    'Dividing'
  end
end

prompt MESSAGES["welcome"]

name = ''
loop do
  name = gets.chomp
  
  if name.empty?
    prompt MESSAGES["valid_name"]
  else
    break
  end
end

prompt("Hello, #{name}!")

loop do # main loop
  number1 = ''
  number2 = ''
  
  loop do
    prompt(MESSAGES['first_number'])
    number1 = gets.chomp
    
    if valid_number? number1
      break
    else
      prompt(MESSAGES['invalid_number'])
    end
  end
  
  
  loop do
    prompt(MESSAGES['second_number'])
    number2 = gets.chomp
    
    if valid_number?(number2)
      break
    else
      prompt(MESSAGES['invalid_number'])
    end
  end
  
  
  operator_prompt = <<-MSG
    What operation would you like to perform?
    1) add
    2) subtract
    3) multiply
    4) divide
  MSG
  
  prompt operator_prompt
  
  operator = ""
  loop do
    operator = gets.chomp
    if ["1", "2", "3", "4"].include?(operator)
      break
    else
      prompt(MESSAGES['invalid_operation'])
    end
  end
  
  prompt("#{operation_to_message(operator)} two numbers")
  
  result = case operator
           when '1'
             number1.to_i + number2.to_i
           when '2'
             number1.to_i - number2.to_i
           when '3'
             number1.to_i * number2.to_i
           when '4'
             number1.to_f / number2.to_f
           end
  
  prompt("The result is : #{result}")
  
  prompt(MESSAGES['iteration'])
  answer = gets.chomp
  break unless answer.downcase.start_with?('y')
end

prompt(MESSAGES['good_bye'])