#LauchSchool Programming Foundations
#Lesson 3: Excercies
#Easy 2

#Question 1
flintstones = %w(Fred, Barney Wilma Betty Bambam Pebbles)

#Question 2
flintstones = %w(Fred, Barney Wilma Betty Bambam Pebbles)
flintstones << "Dino"

#Question 3
flintstones = %w(Fred, Barney Wilma Betty Bambam Pebbles)
flintstones.push("Dino").push("Hoppy")
#or
flintstones.concat(%w(Dino Hoppy))

#Question 4
advice = "Few things in life are as important as house training your pet dinosaur."
advice.slice!(0, advice.index("house"))
# If String#slice is used instead the advice object is not modified.

#Question 5
statement = "The Flintstones Rock!"
statement.count('t')

#Question 6
title = "Flintstone Family Members"
title.center(40)
