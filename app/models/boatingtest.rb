class BoatingTest
 
    #join table 

    attr_reader :student, :test_name, :instructor
    attr_accessor :status
    @@all_tests = []

    def initialize(student, test_name, status, instructor)
        # should initialize with Student (Object),
        #  a boating test name (String), 
        #  a boating test status (String), 
        #  and an Instructor (Object)
        @instructor = instructor
        @student = student
        @test_name = test_name
        @status = status

        @@all_tests << self

    end


    def self.all
        @@all_tests
    end
end
