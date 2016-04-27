#LauchSchool Programming Foundations
#Lesson 3: Excercies
#Hard 1

#Question 1

if false
  greeting = “hello world”
end

greeting

# A variable assigned inside an if statement have the same local scope as a variable assigned outside the block.  As the block is not called is assigned to nil. Return is nil.

#Question 2

greetings = { a: 'hi' }
informal_greeting = greetings[:a]
informal_greeting << ' there'

puts informal_greeting  #  => "hi there"
puts greetings

# {:a=> 'hi there'}

#Question 3
#A)

 def mess_with_vars(one, two, three)
  one = two
  two = three
  three = one
end

one = "one"
two = "two"
three = "three"

mess_with_vars(one, two, three)

puts "one is: #{one}"
# "one is: one"
puts "two is: #{two}"
# "two is: two"
puts "three is: #{three}"
# "Three is: three"

#B)

def mess_with_vars(one, two, three)
  one = "two"
  two = "three"
  three = "one"
end

one = "one"
two = "two"
three = "three"

mess_with_vars(one, two, three)

puts "one is: #{one}"
# "one is: one"
puts "two is: #{two}"
# "two is: two"
puts "three is: #{three}"
# "three is: three"

#C

def mess_with_vars(one, two, three)
  one.gsub!("one","two")
  two.gsub!("two","three")
  three.gsub!("three","one")
end

one = "one"
two = "two"
three = "three"

mess_with_vars(one, two, three)

puts "one is: #{one}"
# "one is: two"
puts "two is: #{two}"
# "two is: three"
puts "three is: #{three}"
# "three is: one"

#Question 4

RANGE = [*'0'..'9', *'a'..'z']

def create_UUID
  uuid = ""
  format = [8, 4, 4, 4, 12]
  format.each_with_index do |part, index|
    uuid += Array.new(part){RANGE.sample}.join
    uuid += '-' unless index >= format.size - 1
  end
  uuid
end

puts create_UUID

#Question 5

def dot_separated_ip_address?(input_string)
  dot_separated_words = input_string.split(".")
  return false unless dot_separated_words.size == 4

  while dot_separated_words.size > 0 do
    word = dot_separated_words.pop
    return false unless is_a_number?(word)
  end
  true
end

puts dot_separated_ip_address?("1.1.1")



