#LauchSchool Programming Foundations
#Lesson 3: Excercies
#Medium 1

#Question 1
10.times do |count|
  puts " " * count + "The Flintones Rock!"
end

#Question 2
statement = "The Flintstones Rock"
count = Hash.new(0)
statement.delete(' ').chars.each {|letter| count[letter] += 1}
p count

#Question 3
# puts "the value of 40 + 2 is " + (40 + 2)

# This is a TypeError and is the result of concatinating a string and a fixnum.  This can be fixed by:
# 1. interpolating the addition
puts "the value of 40 + 2 is #{(40 + 2)}"
# 2. converting the Fixnum to a String
puts "the value of 40 + 2 is " + (40 + 2).to_s

#Question 4
# Part 1
# 1
# 3

# Part 2
# 1
# 2

#Question 5

def factors(number)
  dividend = number
  divisors = []
  begin
    divisors << number / dividend if number % dividend == 0
    dividend -= 1
  end until dividend == 0
  divisors
  rescue
    puts "The number must be greater than 0"
end
factors(0)

#or

def factors(number)
  dividend = number
  divisors = []
  begin
    while dividend > 0 do
      divisors << number / dividend if number % dividend == 0
      dividend -= 1
    end
  end until dividend == 0
  divisors
end
factors(0)

#Bonus 1
# number % dividend == 0 uses the modus arithmetic operator "%" to show that the numbers divide exactly without remainder. 
#Bonus 2
# this returns the divisors array

#Question 6
# Yes, they are different.  rolling_buffer1 should be used as the buffer object is modified by the method.

#Question 7

# This is a vaiable scope error.  The method does not have access to the variable "limit".  It sould be passed to the method as a parameter.

def fib(first_num, second_num, limit)
  while second_num < limit
    sum = first_num + second_num
    first_num = second_num
    second_num = sum
  end
  sum
end

result = fib(0, 1, 15)
puts "result is #{result}"

#Question 8

def titalize!(string)
  string.split.map{|word|word.capitalize}.join(" ")
end

lower = "the flinstones rock!"
puts titalize!(lower)

#Question 9




