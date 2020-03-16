require_relative '../config/environment.rb'

def reload
  load 'config/environment.rb'
end

# Insert code here to run before hitting the binding.pry
# This is a convenient place to define variables and/or set up new object instances,
# so they will be available to test and play around with in your console
student1 = Student.new("Spongebob")
student2 = Student.new("Patrick")
student3 = Student.new("Squidward")
student4 = Student.new("Sandy")

instructor1 = Instructor.new("Mrs. Puff")
instructor2 = Instructor.new("Mr. Krabs")
instructor3 = Instructor.new("Mr. Gibson")

test1 = BoatingTest.new(student1, "TEST1", "passed", instructor1)
test3 = BoatingTest.new(student1, "TEST3", "failed", instructor3)
test4 = BoatingTest.new(student1, "TEST4", "failed", instructor1)
test5 = BoatingTest.new(student1, "TEST5", "passed", instructor2)


test2 = BoatingTest.new(student2, "TEST2", "failed", instructor2)





binding.pry
0 #leave this here to ensure binding.pry isn't the last line

