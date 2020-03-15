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

    #pass_student takes in two strings ("Junior", "flatiron")
    #tests : go to BoatingTest.all, find the boating test that matches ^the above strings
   # if test = [] tests to see if a match was found, if not then it creates a new test with these 
   # parameters and returns it



    def pass_student(student_name, test_name)
        
        tests = BoatingTest.all.select { |boating_test|
            boating_test.bt_name == test_name && boating_test.student.first_name == student_name    
    }
        if tests == []
            stud = Student.find_student(student_name)
            new_test = BoatingTest.new(stud, test_name, "passed", self)
            return new_test
        else
            return tests.each{|bt| bt.bt_status = "passed"}
        end

    
    end

    def fail_student(student_name, test_name)
        
        tests = BoatingTest.all.select { |boating_test|
            boating_test.bt_name == test_name && boating_test.student.first_name == student_name    
    }
        if tests == []
            stud = Student.find_student(student_name)
            new_test = BoatingTest.new(stud, test_name, "failed", self)
            return new_test
        else
            return tests.each{|bt| bt.bt_status = "failed"}
        end

    
    end

end
