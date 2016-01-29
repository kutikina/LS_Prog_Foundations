def exp(c, n)
  r = (1 + c)
  e = r**n
end

def prompt(message)
  puts "=> #{message}"
end

def monthly_rate(rate)
  rate/100/12 
end

def duration_in_months(duration)
  duration * 12
end

prompt("What is the loan amount in dollars")
amount = gets.chomp.to_i

prompt ("What is the Annual Percentage Rate? (e.g. 5 for 5%)")
rate = gets.chomp.to_f

prompt("What is the loan duration in years?")
duration = gets.chomp.to_i

numerator = amount * (monthly_rate(rate) * exp(monthly_rate(rate), duration_in_months(duration)))
denominator = exp(monthly_rate(rate), duration_in_months(duration)) - 1
payment = numerator / denominator


puts "Your loan deails are:"
puts "Loan amount: $ #{amount}."
puts "Loan period: #{duration} years."
puts "Annual Percentage Rate: #{rate}%"
puts "Based on these details, the fixed monthly payment is $#{payment.round(2)}."