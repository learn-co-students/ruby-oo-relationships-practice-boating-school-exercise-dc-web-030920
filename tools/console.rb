require_relative '../config/environment.rb'

def reload
  load 'config/environment.rb'
end

# Insert code here to run before hitting the binding.pry
# This is a convenient place to define variables and/or set up new object instances,
# so they will be available to test and play around with in your console


student1 = Student.new("Junior", 2)
student2= Student.new("Bassy", 1)
student3 = Student.new("DaWit", 1)

instructor1 = Instructor.new("Ann")
instructor2 = Instructor.new("Paul")

boatingtest1 = BoatingTest.new(student1, "Parllel Parking", "n/a", instructor1)
boatingtest2 = BoatingTest.new(student2, "Dock Parking", "n/a", instructor2)
boatingtest3 = BoatingTest.new(student3, "flatiron", "n/a", instructor2)
boatingtest4 = BoatingTest.new(student1, "driving", "passed", instructor2)
boatingtest5 = BoatingTest.new(student1, "supertest", "passed", instructor2)
boatingtest6 = BoatingTest.new(student2, "supertest", "passed", instructor2)
boatingtest7 = BoatingTest.new(student3, "supertest", "passed", instructor2)

boatingtest3.bt_status




binding.pry
0 #leave this here to ensure binding.pry isn't the last line
