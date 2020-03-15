require_relative '../config/environment.rb'

def reload
  load 'config/environment.rb'
end

# Insert code here to run before hitting the binding.pry
# This is a convenient place to define variables and/or set up new object instances,
# so they will be available to test and play around with in your console


student1 = Student.new("Junior")
student2= Student.new("Bassy")
student3 = Student.new("DaWit")

instructor1 = Instructor.new("Ann")
instructor2 = Instructor.new("Paul")

boatingtest1 = BoatingTest.new(student1, "Parllel Parking", "n/a", instructor1)
boatingtest2 = student2.add_boating_test("app_test", "n/a", instructor1)
boatingtest3 = BoatingTest.new(student3, "flatiron", "n/a", instructor2)

boatingtest4 = BoatingTest.new(student2,"making_rails_app", "n/a" , instructor2)
boatingtest5 = BoatingTest.new(student2, "final_test", "n/a", instructor2)

instructor1.pass_student(student2.first_name, "app_test")
instructor2.fail_student(student2.first_name, "making_rails_app")
instructor2.pass_student(student2.first_name, "final_test")


student2.grade_percentage










