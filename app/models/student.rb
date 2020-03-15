class Student

    attr_reader :name

    @@students = []

    def initialize(name)
        @name = name
        @@students << self
    end

    def add_boating_test(boating_test, boating_status, instructor)
        BoatingTest.new(self, boating_test, boating_status, instructor)
    end

    def self.find_student(first_name)
        self.all.find do |student|
            student.name == first_name
        end
    end

    def tests
        BoatingTest.all.find_all do |boating_instance|
            boating_instance.student == self
        end
    end

    def grade_percentage
        num_tests = self.tests.length.to_f
        passed = self.tests.select do |ti|
            ti.status == "Passed"
        end.length.to_f
        (passed / num_tests * 100).round(2)
    end

    def self.all
        @@students
    end

    
end
