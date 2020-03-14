class Student
    @@all = []
        attr_reader :first_name
        def initialize (first_name)
            @first_name = first_name
            @@all << self
        end 
    
        def self.all 
            @@all
        end 
    
        def all_boating_test(test_name, instructor, status)
            BoatingTest.new(test_name, self, instructor, status)
        end 
    
        def self.find_student(name)
            self.all.find do |si|
                si.first_name == name
            end
        end 
    
        def tests
            BoatingTest.all.select do |ti| 
                ti.student == self 
            end 
        end 
    
        def grade_percentage
        #student1.grade_percentage == 0 
            #find all tests that include this student 
           passing = self.tests.select do |ti|
                ti.status == "Passed"
            end
            ((passing.length.to_f / self.tests.length.to_f)*100).round(2)
        end 
    
        # `Student#grade_percentage` should return the percentage of tests that the student has passed,
        # a Float (so if a student has passed 3 / 9 tests that they've taken, this method should return the Float `33.33`)
    
    end
    
