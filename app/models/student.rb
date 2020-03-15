class Student
    attr_accessor :first_name
    @@all = []
    def initialize(name)
        @first_name = name
        @@all << self

    end

    def self.all
        @@all
    end

    def add_boating_test(boats_name,boating_test_status, instructor)
        BoatingTest.new(self, boats_name, boating_test_status, instructor)
    end

    def self.find_student(students_name)
        self.all.select do |student|
            student.first_name == students_name
        end
    end

    def grade_percentage
        total_tests = BoatingTest.all.select{|bt_testt| bt_testt.student == self}
        count_test = total_tests.count * 1.0
        count_passed = total_tests.select{|bt_test| bt_test.bt_status == "passed"}.count

        passed_percentage = count_passed / count_test * 100.00

        binding.pry
    end
end

#should initialize with first_name

# should include return all of the student instances

# Student#add_boating_test should initialize a new boating
# test with a Student (Object), a boating test name (String), 
# a boating test status (String), and an Instructor (Object)

# Student.find_student will take in a first name and output the 
# student (Object) with that name

# Student#grade_percentage should return the percentage of 
# tests that the student has passed, a Float (so if a student 
# has passed 3 / 9 tests that they've taken, this method should 
# return the Float 33.33)

