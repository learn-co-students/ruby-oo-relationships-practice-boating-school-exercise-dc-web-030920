require_relative '../config/environment.rb'

def reload
  load 'config/environment.rb'
end

# Insert code here to run before hitting the binding.pry
# This is a convenient place to define variables and/or set up new object instances,
# so they will be available to test and play around with in your console



# binding.pry

#Varibales 
student1 = Student.new("Uzzo")
student2 = Student.new("Lindsay")
student3 = Student.new("Mary")
student4 = Student.new("Richard")
instructor1 = Instructor.new("Chine")
instructor2 = Instructor.new("Ann")
instructor3 = Instructor.new ("Paul")
test1 = BoatingTest.new("Basic Skills", instructor2, student1,"Pending")
test2 = BoatingTest.new("Basic Skills", instructor1, student2, "Pending")
test3 = BoatingTest.new("Basic Skills", instructor3, student3, "Pending")
test4 = BoatingTest.new("Advanced Skills", instructor2, student1,"Pending")
test5 = BoatingTest.new("Advanced Skills", instructor2, student4, "Pending")
 
p "-----Student Testing -------"
p Student.all == [student1,student2,student3,student4]
student1.all_boating_test("Expert Skills", instructor3, "Pending")
p BoatingTest.all.length == 6 
p Student.find_student("Uzzo") == student1
p Student.find_student("Lindsay") == student2

p "----- Boating Testing ------"
p test1.instructor == instructor2
p test3.student == student3
p test2.status == "Pending"
p test4.test_name == "Advanced Skills"

p "----- Instructor Testing ------"
p instructor3.name == "Paul"
p Instructor.all == [instructor1, instructor2, instructor3]
instructor2.pass_student(student1,"Basic Skills") == test1
p test1.status == "Passed"
instructor3.pass_student(student3,"Blah,Blah,Blah")
p BoatingTest.all.length == 7 
instructor1.fail_student(student2, "Basic Skills")
p test2.status == "Failed"
instructor3.fail_student(student1, "All I ever hear from you is blah blah blah") 
p BoatingTest.all.length == 8 

p "------ Test Passing Rate -------"
p student1.tests.length == 3 
p student1.grade_percentage == 33.33
p student2.grade_percentage == 0
p student3.grade_percentage == 50
p student4.grade_percentage == 0 



0 #leave this here to ensure binding.pry isn't the last line

