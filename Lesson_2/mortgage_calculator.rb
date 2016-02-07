
def prompt(message)
  puts "=> #{message}"
end

amount = ''

prompt "Welcome to the Mortgage Calculator.  "

loop do
  loop do
    prompt "What is the loan amount in dollars"
    amount = gets.chomp.to_i
    if amount > 0
      break
    else
      prompt "You must enter an amount in dollars that is more than 0"
    end
  end

  rate = ''
  monthly_rate = ''

  loop do
    prompt "What is the Annual Percentage Rate? (e.g. 5 for 5%)"
    rate = gets.chomp.to_f
    if rate > 0
      monthly_rate = rate / 100 / 12
      break
    else
      prompt "You must enter a rate that is a positive number"
    end
  end

  duration = ''

  loop do
    prompt "What is the loan duration in years?"
    duration = gets.chomp.to_i
    if duration > 0
      duration = duration * 12
      break
    else  
      prompt "You must enter a valid duration greater than 0 years"
    end
  end

  payment = amount * (monthly_rate * ((monthly_rate + 1) ** duration) / (((monthly_rate + 1) ** duration) - 1))

  puts "Your loan deails are:"
  puts "Loan amount: $ #{amount}."
  puts "Loan period: #{duration / 12} years."
  puts "Annual Percentage Rate: #{rate.to_i}%"
  puts "Based on these details, the fixed monthly payment is $#{payment.round(2)}."

  prompt "Would you like to run it again? y for Yes"
  answer = gets.downcase.chomp
  break unless answer.start_with?("y")
end
