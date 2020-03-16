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

    def boating_tests
        BoatingTest.all.select{|test| test.instructor = self}
    end

    def students
        self.boating_tests.collect {|test| test.student}
    end

    def pass_student(student, test_name)
        found_test = BoatingTest.all.find{|test| test.student == student && test.test_name == test_name}
        if found_test == nil
            BoatingTest.new(student, test_name, "passed", self)
        else
            found_test.test_status = "passed"
        end
    end

    def fail_student(student, test_name)
        found_test = BoatingTest.all.find{|test| test.student == student && test.test_name == test_name}
        if found_test == nil
            BoatingTest.new(student, test_name, "failed", self)
        else
            found_test.test_status = "failed"
        end
    end
end
