class Student

    attr_reader :first_name

    @@all = []

    def initialize(first_name)
        @first_name = first_name
        @@all << self
    end

    def self.all
        @@all
    end
    
    def self.find_student(first_name)
        self.all.find{|student| student.first_name == first_name}
    end

    def add_boating_test(test_name, status, instructor)
        Student.new(self, test_name, status, instructor)
    end

    def boating_tests
        BoatingTest.all.select {|test| test.student == self}
    end

    def instructors
        self.boating_tests.collect {|test| test.instructor}
    end

    def grade_percentage
        num_passed = 0.0
        num_failed = 0.0
        self.boating_tests.each do |test| 
           if test.test_status == "passed"
            num_passed += 1
           else
            num_failed += 1
           end
        end
        ((num_passed) / (self.boating_tests.count)) * 100
    end
end
