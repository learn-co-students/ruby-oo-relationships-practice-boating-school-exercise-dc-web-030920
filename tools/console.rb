require_relative '../config/environment.rb'

require'pry'

def reload
  load 'config/environment.rb'
end

# Insert code here to run before hitting the binding.pry
# This is a convenient place to define variables and/or set up new object instances,
# so they will be available to test and play around with in your console


puts "------------Testing Student Variables ---------------"
student1 = Student.new("Bob")
student2 = Student.new("Uzo")
student3 = Student.new("Chibu")
student4 = Student.new("Bobo")
p student1.name == "Bob"
p student2.name == "Uzo"
p student3.name == "Chibu"
p student4.name == "Bobo"

puts "------------Testing Instructor Variables ------------"
teacher1 = Instructor.new("Ann")
teacher2 = Instructor.new("Chine")
teacher3 = Instructor.new("Mary")
teacher4 = Instructor.new("Lynch")
p teacher1.name == "Ann"
p teacher2.name == "Chine"
p teacher3.name == "Mary"
p teacher4.name == "Lynch"

puts "-----------Testing BoatingTest Variables ------------"
test1 = BoatingTest.new(student1, "The_Boating_Test", "Starting Soon", teacher1)
p test1.student == student1
p test1.boating_test == "The_Boating_Test"
p test1.status == "Starting Soon"
p test1.instructor == teacher1

test2 = BoatingTest.new(student2, "The_Driving_Test", "Starting Soon", teacher2)
p test2.student == student2
p test2.boating_test == "The_Driving_Test"
p test2.status == "Starting Soon"
p test2.instructor == teacher2

test3 = BoatingTest.new(student3, "The_Boating_Test", "Passed", teacher3)
p test3.student == student3
p test3.boating_test == "The_Boating_Test"
p test3.status == "Passed"
p test3.instructor == teacher3

test4 = BoatingTest.new(student4, "The_Boating_Test", "Failed", teacher4)
p test4.student == student4
p test4.boating_test == "The_Boating_Test"
p test4.status == "Failed"
p test4.instructor == teacher4


puts "--:)----------Test Methods-----------:)--"
puts"                :)                "

puts"----------Student Methods Test--------------"
#Should initialize with `first_name`
p student3.name == "Chibu"
#`Student.all` should return all of the student instances
p Student.all == [student1, student2, student3, student4]
#`Student#add_boating_test` should initialize a new boating test with a Student (Object), a boating test name (String), a boating test status (String), and an Instructor (Object)
student3.add_boating_test("The_Best_Boating_Test", "Passed", teacher2) 
p BoatingTest.all.length == 5
#`Student.find_student` will take in a first name and output the student (Object) with that name
p Student.find_student("Bob") == student1
#`Student#grade_percentage` should return the percentage of tests that the student has passed, a Float (so if a student has passed 3 / 9 tests that they've taken, this method should return the Float `33.33`) 
p student3.grade_percentage == 100.00


puts "------------Boating Methods Test-----------------"
#should initialize with Student (Object), a boating test name (String), a boating test status (String), and an Instructor (Object)
#`BoatingTest.all` returns an array of all boating tests
p BoatingTest.all.length == 5

puts"-------------Instructor Method Test---------------"
p teacher1.name == "Ann"
p Instructor.all == [teacher1, teacher2, teacher3, teacher4]
p teacher4.pass_student(student4, "The_Boating_Test") == "Passed"
p teacher3.fail_student(student3, "The_Boating_Test") == "Failed"

# instructor2.pass_student(student1,"Basic Skills") == test1
# p test1.status == "Passed"
# instructor3.pass_student(student3,"Blah,Blah,Blah")
# p BoatingTest.all.length == 7 

0 #leave this here to ensure binding.pry isn't the last line

