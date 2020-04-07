class Instructor

    attr_reader :name 
    @@all_instructors = []

    def initialize(name )
       @name = name
        @@all_instructors << self
    end

    #return all of Mrs.puff's boating tests
    def boating_tests
        BoatingTest.all.select{|test| test.instructor == self }
        #similar to BoatingTest.all.select{|test| test.status == "failed" }
        #that finds all the tests with a failed status
    end

    #return all students for an instructor
    def students
        self.boating_tests.collect{|test| test.student }
    end


    def pass_student(student, test_name)

        #find a test where the student and test_name matches
       found_test = BoatingTest.find{|test|  
       test.student == student && test.test_name == test_name
    }
    #if the test exists 
    if found_test == nil 6
        #we want to create that test
        BoatingTest.new(student, test_name, "passed", instructor)
    else
    #otherwise, update that test's status to "passed"
    found_test.status = "passed" 
        #if there is no matching test,
        # this method should create a test with the student, 
        # that boat test name, and the status 'passed'. 
        # Either way, it should return the BoatingTest instance
    end
    end

    def fail_student(student, test_name)

        #find a test where the student and test_name matches
       found_test = BoatingTest.find{|test|  
       test.student == student && test.test_name == test_name
        }
        #if the test exists 
        if found_test == nil 6
            #we want to create that test
            BoatingTest.new(student, test_name, "failed", instructor)
        else
        #otherwise, update that test's status to "failed"
        found_test.status = "failed" 
        end
    end

end
