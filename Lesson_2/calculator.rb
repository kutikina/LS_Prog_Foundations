require 'yaml'
MESSAGES = YAML.load_file('calculator_messages.yml')

def prompt(message)
  Kernel.puts("=> #{message}")
end

def valid_number?(num)
  Integer(num) rescue false
end

def operation_to_message(op)
  case op
  when "1"
    "Adding"
  when "2"
    "Subtracting"
  when "3"
    "Multiplying"
  when "4"
    "Dividing"
  end
end

prompt(MESSAGES['welcome'])

name = ""

loop do
  name = Kernel.gets().chomp()
  prompt(MESSAGES['valid_name']) unless name.empty?()
  break
end

prompt("Hi #{name}!")

loop do # main loop
  number1 = ""
  loop do
    prompt(MESSAGES['first_number'])
    number1 = Kernel.gets().chomp()
    prompt(MESSAGES['valid_number']) unless valid_number?(number1)
    break
  end

  number2 = ""

  loop do
    prompt(MESSAGES['second_number'])
    number2 = Kernel.gets().chomp()
    prompt(MESSAGES['valid_number']) unless valid_number?(number2)
    break
  end

  operator_prompt = <<-MSG
    What operation would you like to perform?
    1) add
    2) subtract
    3) multiply
    4) divide
  MSG

  prompt(operator_prompt)

  operator = ""
  loop do
    operator = Kernel.gets().chomp()
    prompt(MESSAGES['valid_operator']) unless %w(1 2 3 4).include?(operator)
    break
  end

  prompt("#{operation_to_message(operator)} the two numbers...")

  result =  case operator
            when "1"
              number1.to_i() + number2.to_i()
            when "2"
              number1.to_i() - number2.to_i()
            when "3"
              number1.to_i() * number2.to_i()
            when "4"
              number1.to_f() / number2.to_f()
            end

  prompt("The result is #{result}")

  prompt(MESSAGES['another_operation'])
  answer = gets().chomp()
  break unless answer.downcase().start_with?("y")
end

prompt(MESSAGES['thanks'])
