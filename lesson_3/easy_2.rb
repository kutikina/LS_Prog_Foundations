#LauchSchool Programming Foundations
#Lesson 3: Excercies
#Easy 2

#Question 1
ages = { "Herman" => 32, "Lily" => 30, "Grandpa" => 402, "Eddie" => 10 }
ages.has_key?("Spot")
ages.include?("Spot")
ages.key?("Spot")

#Question 2
ages = { "Herman" => 32, "Lily" => 30, "Grandpa" => 5843, "Eddie" => 10, "Marilyn" => 22, "Spot" => 237 }
ages.values.inject(0, :+)
# or better 
ages.values.inject(:+)

#Question 3
ages = { "Herman" => 32, "Lily" => 30, "Grandpa" => 402, "Eddie" => 10 }
ages.delete_if{|key, value| value >= 100}
# or
ages.keep_if{|key, value| value < 100}

#Question 4
munsters_description = "The Munsters are creepy in a good way."
#1.
munsters_description.capitalize!
#  "The munsters are creepy in a good way."

#2.
munsters_description = "The Munsters are creepy in a good way."
munsters_description.swapcase!
#  "tHE mUNSTERS ARE CREEPY IN A GOOD WAY."

#3.
munsters_description = "The Munsters are creepy in a good way."
munsters_description.down_case!
#  "the munsters are creepy in a good way."

#4.
munsters_description = "The Munsters are creepy in a good way."
munsters_description.up_case!
#  "THE MUNSTERS ARE CREEPY IN A GOOD WAY."

#Question 5
ages = { "Herman" => 32, "Lily" => 30, "Grandpa" => 5843, "Eddie" => 10 }
additional_ages = { "Marilyn" => 22, "Spot" => 237 }
ages.merge!(additional_ages)

#Question 6
ages = { "Herman" => 32, "Lily" => 30, "Grandpa" => 5843, "Eddie" => 10, "Marilyn" => 22, "Spot" => 237 }
ages.values.min

#Question 7
advice = "Few things in life are as important as house training your pet dinosaur."
advice.include?("Dino")

#Question 8
flintstones = %w(Fred Barney Wilma Betty BamBam Pebbles)
flintstones.index{|value| value.start_with?("Be")}

#Question 9 & 10
flintstones = %w(Fred Barney Wilma Betty BamBam Pebbles)
flintstones.map!{|value| value[0..3]}


