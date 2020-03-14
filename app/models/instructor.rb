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

    #student is an class instance of student ... test name is a string 
    def pass_student(student, test_name)
        test_to_pass =  BoatingTest.all.find do |test|
            test.test_name == test_name && test.student == student
        end 
            if test_to_pass 
                test_to_pass.status = "Passed"
            else
                BoatingTest.new(test_name, self, student, status="Passed")
            end
    end

    def fail_student(student, test_name)
        test_to_fail = BoatingTest.all.find do |test|
            test.test_name == test_name && test.student == student
            end
            if test_to_fail
                test_to_fail.status = "Failed"
            else 
                BoatingTest.new(test_name, self, student, status="Failed")
            end 
        end 
end
