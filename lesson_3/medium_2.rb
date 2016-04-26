#LauchSchool Programming Foundations
#Lesson 3: Excercies
#Medium 1

#Question 1

munsters = {
  "Herman" => { "age" => 32, "gender" => "male" },
  "Lily" => { "age" => 30, "gender" => "female" },
  "Grandpa" => { "age" => 402, "gender" => "male" },
  "Eddie" => { "age" => 10, "gender" => "male" }
}

total_age = 0

munsters.each do |key, hash|
  total_age += hash["age"] if hash["gender"] == "male"
end

puts "The age of males in total is #{total_age}."

#Question 2

munsters = {
  "Herman" => { "age" => 32, "gender" => "male" },
  "Lily" => { "age" => 30, "gender" => "female" },
  "Grandpa" => { "age" => 402, "gender" => "male" },
  "Eddie" => { "age" => 10, "gender" => "male" },
  "Marilyn" => { "age" => 23, "gender" => "female"}
}

munsters.each_pair do |key, hash|
  puts "#{key} is a #{hash["age"]} year old #{hash["gender"]}."
end

#Question 3

def not_tricky_method!(a_string_param, an_array_param)
  a_string_param << "rutabaga"
  an_array_param << "rutabaga"
end

my_string = "pumpkins"
my_array = ["pumpkins"]
not_tricky_method!(my_string, my_array)

puts "My string looks like this now: #{my_string}"
puts "My array looks like this now: #{my_array}"

#Question 4

sentence = "Humpty Dumpty sat on a wall."
puts sentence
puts sentence.delete(".").split.reverse.join(" ") + "."

#Question 5

#34

#Question 6

#The data changed.  The method does not assign the changed data to another variable so the passed parameter is changed.

#Question 7

# paper

# Question 8

# "no"





