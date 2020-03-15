class Student
    attr_accessor :first_name, :num_passed
    @@all = []
    def initialize(first_name, num_passed)
        @first_name = first_name
        @num_passed = num_passed
        @@all << self

    end

    def self.all
        @@all
    end

    def add_boating_test (student, bt_name, bt_status, instructor)
        Boatingtest.new(student, bt_name, bt_status, instructor)
    end

    def self.find_student(students_name)
        self.all.select do |student|
            student.first_name == students_name
            binding.pry
        end
    end

    def grade_percentage
        studentSelector = BoatingTest.all.select do |data|
            data.student.first_name == self.first_name
        end
        totalTests = studentSelector.length
        passed_tests = studentSelector.select do |data|
            data.bt_status == "passed"
        end
        numPassed = passed_tests.length.to_f
        percentage = numPassed/totalTests * 100
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

