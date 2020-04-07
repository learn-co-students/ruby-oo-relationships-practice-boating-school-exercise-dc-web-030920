class Student

attr_reader :first_name
@@all_students = [] 

    def initialize(first_name) 
        @first_name = first_name
        @@all_students << self
    end

    def self.all
        @@all_students
    end

    def self.find_student(firstname)#first_name is a string
        #will take in a first name and return student (Object)
        self.all.find{|student| student.first_name == first_name}
        #Student.all ..self.all is best practice
        #.find takes in a boolean, has to match condition passed in and will only return one element
        
    end

    #string, string, instance of instructor
    def add_boating_test(test_name, status, instructor)
    BoatingTest.new(self, test_name, status, instructor)
    end

    def boating_tests
        BoatingTest.all.select{|test| test.instructor == self }
        
    end

    def instructors
        self.boating_tests.collect{|tests| test.instructor}
    end

    def grade_percentage
        #returns the percentage of tests that the student has passed (in Float form ** .to_f**)
        #I have access to self which is the student
        passed_test = 0
        failed_test = 0
        self.boating_tests.each{|test|  p test.status 
            if test.status = "passed"
                passed_test += 1
            else
                failed_test += 1
            end 
        }
        fraction = passed_test.to_f / (passed_test.to_f + failed_test.to_f)
        fraction * 100
    end
end
