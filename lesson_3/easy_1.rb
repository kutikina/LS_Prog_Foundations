#LauchSchool Programming Foundations
#Lesson 3: Excercies
#Easy 1

#Question 1
#The output would be:
#1
#2
#2
#3
#The uniq method does not change the numbers object.  Puts calls the to_s method.

#Question 2
#Depends on where they are placed.  At the end of a method, they are part of the method implementation. 
#1. != before means not equals
#2. ! before something returns the boolean of the object
#3. ! after the .uniq method modifys the object calling it
#4. ? before something is using the ternary operator i.e.
    #  if_this_true ? then_this : else_this
#5. ? after something is part of the method implementation

#Question 3
advice = "Few things in life are as important as house training your pet dinosaur."
advice.sub!('important', 'urgent')

#Question 4
numbers = [1, 2, 3, 4, 5]
numbers.delete_at(1) 
# => deletes the value at position 1 in the array.  Modifys the array.
numbers = [1, 2, 3, 4, 5]
numbers.delete(1)
# => deletes the value 1 from the array.  Modifys the array

#Question 5
(10..100).include?(45) or (10..100).cover?(45)

#Question 6
famous_words = "seven years ago..."
famous_words.prepend("four score and ")
famous_words.insert(0, "four score and ")

#Question 7
# 42

#Question 8
flintstones = ["Fred", "Wilma"]
flintstones << ["Barney", "Betty"]
flintstones << ["BamBam", "Pebbles"]
flintstones.flatten!

#Question 9
flintstones = { "Fred" => 0, "Wilma" => 1, "Barney" => 2, "Betty" => 3, "BamBam" => 4, "Pebbles" => 5 }
flintstones.assoc("Barney")

#Question 10
flintstones = ["Fred", "Barney", "Wilma", "Betty", "Pebbles", "BamBam"]
Hash[flintstones.map.with_index{|x,i|[x,i]}]

