class Student

    attr_accessor :first_name 

    @@all = [] 

    def initialize(first_name) 
        @first_name = first_name 

        @@all << self 

    end 

    def self.all
        @@all 
    end 



    def self.find_student(first_name)

            self.all.find { |student| student.first_name == first_name }

    end 


    def add_boating_test(test_name, status, instructor)
        BoatingTest.new(self, test_name, status, instructor)
    end 


    def boating_tests
        BoatingTest.all.select {|test| test.student == self}
    end 

    def instructors 
        self.boating_tests.collect {|test| test.instructor }
    end 

    def grade_percentage
        passed_tests = self.boating_tests.count {|test| test.status == "passed" }.to_f
        all_tests = self.boating_tests.count.to_f 

        grade_percentage = (passed_tests / all_tests).to_f
        grade_percentage * 100 

    end 

end
