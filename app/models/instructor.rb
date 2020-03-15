require 'pry'
class Instructor

    attr_reader :name
    @@all = []
    
    def initialize(name)
        @name = name
        @@all << self
    end

    def self.all
        @@all
    end

    def pass_student(student_name, test_name)
        testinfo = BoatingTest.all.select do |info|
            info.student.first_name == student_name && info.bt_name == test_name
        end
        
        if testinfo
            testinfo.bt_status = "passed"
        else
            newtest = Boatingtest.new(student_name, test_name, "passed", self)
        end
    end

    def fail_student(student_name, test_name)
        testinfo = BoatingTest.all.select do |info|
            info.student.first_name == student_name && info.bt_name == test_name
        end
        if testinfo
            testinfo.bt_status = "failed"
        else
            newtest = Boatingtest.new(student_name, test_name, "failed", self)
        end
    end

end
#initialize with a name
#Instructor.all should return all instructors

#Instructor#pass_student should take in a student instance and test name.
# If there is a BoatingTest whose name and student match the values passed in, 
# this method should update the status of that BoatingTest to 'passed'. If there 
# is no matching test, this method should create a test with the student, that 
# boat test name, and the status 'passed'. Either way, it should return the BoatingTest instance.

#Instructor#fail_student should take in a student instance and test name. Like #pass_student, it 
#should try to find a matching BoatingTest and update its status to 'failed'. If it cannot find an 
#existing BoatingTest, it should create one with the name, the matching student, and the status 'failed'.

















    #     tests = BoatingTest.all.select { |boating_test|
    #         boating_test.bt_name == test_name && boating_test.student.first_name == student_name    
    # }
    #     if tests == []
    #         stud = Student.find_student(student_name)
    #         new = BoatingTest.new(stud, test_name, "passed", self)
    #         return new
    #     else
    #         tests.map{|test| test.bt_status}