#LauchSchool Programming Foundations
#Lesson 3: Excercies
#Medium 1

#Question 1
def fun_with_ids
  a_outer = 42 # 85
  b_outer = "forty two" #70187111195940
  c_outer = [42] #70187111233860
  d_outer = c_outer[0] #85

  a_outer_id = a_outer.object_id #85
  b_outer_id = b_outer.object_id #70187111195940
  c_outer_id = c_outer.object_id #70187111233860
  d_outer_id = d_outer.object_id #85

  puts "a_outer is 42 with an id of: 85 before the block."
  puts "b_outer is forty two with an id of: 70187111195940 before the block."
  puts "c_outer is [42] with an id of: 70187111233860 before the block."
  puts "d_outer is 42 with an id of: 85} before the block.\n\n"

  1.times do
    a_outer_inner_id = a_outer.object_id #85
    b_outer_inner_id = b_outer.object_id #70187111195940
    c_outer_inner_id = c_outer.object_id #70187111233860
    d_outer_inner_id = d_outer.object_id #85

    puts "a_outer id was 85 before the block and is: 85 inside the block."
    puts "b_outer id was 70187111195940 before the block and is: 70187111195940 inside the block."
    puts "c_outer id was 70187111233860 before the block and is: 70187111233860 inside the block."
    puts "d_outer id was 85 before the block and is: 85 inside the block.\n\n"

    a_outer = 22 #45
    b_outer = "thirty three" #70187108245640
    c_outer = [44] #70187108478900
    d_outer = c_outer[0] #89

    puts "a_outer inside after reassignment is 22 with an id of: 85 before and: 45 after."
    puts "b_outer inside after reassignment is thirty three with an id of: 70187111195940 before and: 70187108245640 after."
    puts "c_outer inside after reassignment is [44] with an id of: 70187111233860 before and: 70187108318820 after."
    puts "d_outer inside after reassignment is 44 with an id of: 85 before and: 89 after.\n\n"


    a_inner = a_outer #22
    b_inner = b_outer #"thirty three"
    c_inner = c_outer #[44]
    d_inner = c_inner[0] #44

    a_inner_id = a_inner.object_id #45
    b_inner_id = b_inner.object_id #0187108245640
    c_inner_id = c_inner.object_id #70187108478900
    d_inner_id = d_inner.object_id #89

    puts "a_inner is 22 with an id of: 45 inside the block (compared to 45 for outer)."
    puts "b_inner is thirty three with an id of: 0187108245640 inside the block (compared to 70187108245640 for outer)."
    puts "c_inner is [44] with an id of: 70187108478900 inside the block (compared to 70187108478900 for outer)."
    puts "d_inner is 44 with an id of: 89 inside the block (compared to 89 for outer).\n\n"
  end

  puts "a_outer is 22 with an id of: 85 BEFORE and: 45 AFTER the block."
  puts "b_outer is thirty three with an id of: 70187111195940 BEFORE and: 70187108245640 AFTER the block."
  puts "c_outer is [44] with an id of: 70187111233860 BEFORE and: 70187108478900 AFTER the block."
  puts "d_outer is 44 with an id of: 85 BEFORE and: 89 AFTER the block.\n\n"

  puts "a_inner is #{a_inner} with an id of: #{a_inner_id} INSIDE and: #{a_inner.object_id} AFTER the block." rescue puts "ugh ohhhhh" #ugh ohhhh
  puts "b_inner is #{b_inner} with an id of: #{b_inner_id} INSIDE and: #{b_inner.object_id} AFTER the block." rescue puts "ugh ohhhhh" #ugh ohhhh
  puts "c_inner is #{c_inner} with an id of: #{c_inner_id} INSIDE and: #{c_inner.object_id} AFTER the block." rescue puts "ugh ohhhhh" #ugh ohhhh
  puts "d_inner is #{d_inner} with an id of: #{d_inner_id} INSIDE and: #{d_inner.object_id} AFTER the block.\n\n" rescue puts "ugh ohhhhh" #ugh ohhhh
end

#Question 3

def tricky_method(a_string_param, an_array_param)
  a_string_param += "rutabaga"
  an_array_param << "rutabaga"
end

my_string = "pumpkins"
my_array = ["pumpkins"]
tricky_method(my_string, my_array)

puts "My string looks like this now: #{my_string}"
# "pumpkins"
puts "My array looks like this now: #{my_array}"
# ["pumpkins", "rutabaga"]

#This is because += does not modify the caller, while << does.

#Question 4

def tricky_method_two(a_string_param, an_array_param)
  a_string_param.gsub!('pumpkins', 'rutabaga')
  an_array_param = ['pumpkins', 'rutabaga']
end

my_string = "pumpkins"
my_array = ["pumpkins"]
tricky_method_two(my_string, my_array)

puts "My string looks like this now: #{my_string}"
# "rutabaga"
puts "My array looks like this now: #{my_array}"
# ["pumpkins"]

#Question 5

def color_valid(color)
  color == "blue" || color == "green"
end



