require 'pry'
class Instructor

    attr_reader :name

    @@all_instructors = []

    def initialize(name)
        @name = name
        @@all_instructors << self
    end

    def self.all
        @@all_instructors
    end

    def pass_student(student_instance, test_name)
        tests_to_pass = BoatingTest.all.find do |boating_test_instance|
            boating_test_instance.boating_test == test_name && boating_test_instance.student == student_instance
        end
        if tests_to_pass
            #change status to pass
            tests_to_pass.status = "Passed"
        else
            #create new instance
            BoatingTest.new(student_instance, test_name, status="Passed", self)
        end
    end

    def fail_student(student, test_name)
        tests_failed = BoatingTest.all.find do |boating_test_instance|
            boating_test_instance.boating_test == test_name && boating_test_instance.student == student
        end

        if tests_failed
            tests_failed.status = "Failed"
        else
            BoatingTest.new(student, test_name, status="Failed", self)
        end
    end
end









    # # Lindsay's code I commented out yours and tests this and it worked
    #but I can't find the difference 
    # def pass_student(student, test_name)
    #     test_to_pass =  BoatingTest.all.find do |test|
    #         test.test_name == test_name && test.student == student
    #     end 
    #         if test_to_pass 
    #             test_to_pass.status = "Passed"
    #         else
    #             BoatingTest.new(test_name, self, student, status="Passed")
    #         end
    # end
