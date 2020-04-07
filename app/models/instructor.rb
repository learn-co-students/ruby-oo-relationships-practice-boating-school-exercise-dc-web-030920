
class Instructor

    attr_accessor :name 

    @@all = []

    def initialize(name)
        @name = name
        @@all << self 

    end 

    def self.all 
        @@all
    end

    def boating_tests
        BoatingTest.all.find_all { |test| test.instructor == self }
    end 

    def students 
       self.boating_tests.collect {|test | test.student }
    end 


    def pass_student(student, test)

        found_test = BoatingTest.all.find {|test| test.student == student && test.test_name == test }
        if found_test == nil 
            BoatingTest.new(student, test, "passed", self)
        else  
            found_test.status = "passed" 
        end 
    end 

    def fail_student(student, test)

        found_test = BoatingTest.all.find {|test| test.student == student && test.test_name == test }
        if found_test == nil 
            BoatingTest.new(student, test, "fail", self)
        else  
            found_test.status = "fail" 
        end 
    end 




end
