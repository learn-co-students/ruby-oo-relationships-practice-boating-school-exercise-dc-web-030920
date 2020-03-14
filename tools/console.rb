require_relative '../config/environment.rb'

def reload
  load 'config/environment.rb'
end

# Insert code here to run before hitting the binding.pry
# This is a convenient place to define variables and/or set up new object instances,
# so they will be available to test and play around with in your console

ins1 = Instructor.new("Steve")
ins2 = Instructor.new("Danny")
ins3 = Instructor.new("Lisa")
ins4 = Instructor.new("Paul")
ins5 = Instructor.new("Mike")
ins6 = Instructor.new("Karen")
ins7 = Instructor.new("Linda")
stud1 = Student.new("Alex")
stud2 = Student.new("John")
stud3 = Student.new("Brian")
stud4 = Student.new("Merideth")
stud5 = Student.new("Cindy")


stud1.add_boating_test("TEST1", "FAILED", ins1)
stud1.add_boating_test("TEST2", "FAILED", ins1)
stud1.add_boating_test("TEST3", "PASSED", ins1)
stud1.add_boating_test("TEST4", "PASSED", ins1)
stud1.add_boating_test("TEST5", "FAILED", ins1)
stud1.add_boating_test("Making Wakes", "FAILED", ins1)
stud1.add_boating_test("Land Ahoy", "PASSED", ins1)
stud1.add_boating_test("All green ahead", "FAILED", ins1)
stud1.add_boating_test("All green ahead", "FAILED", ins1)

stud2.add_boating_test("Making Wakes", "PASSED", ins3)
binding.pry
0 #leave this here to ensure binding.pry isn't the last line

# spongebob = Student.new("Spongebob")
# patrick= Student.new("Patrick")
 
# puff= Instructor.new("Ms.Puff")
# krabs= Instructor.new("Mr.Krabs")
 
# no_crashing = spongebob.add_boating_test("Don't Crash 101", "pending", puff)
# power_steering_failure = patrick.add_boating_test("Power Steering 202", "failed", puff)
# power_steering_pass = patrick.add_boating_test("Power Steering 201", "passed", krabs)