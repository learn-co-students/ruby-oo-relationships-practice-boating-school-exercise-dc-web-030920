require "pry"
class Student
    attr_reader :first_name
    @@all = []
    def initialize(name)
        @first_name = name
        @@all << self
    end

    def self.all
        @@all
    end

    def add_boating_test(name, status, instructor)
        BoatingTest.new(self, name, status, instructor)
    end

    def self.find_student(name)
        self.all.select {|students| students.first_name == name}
    end

    def grade_percentage
        array = BoatingTest.all.select {|test| test.student == self}
        (100 / (array.count.to_f / (array.select { |test| test.status == "PASSED" }.count).to_f)).round(2)
        # binding.pry
    end
end




# Student class:
# 0 should initialize with first_name
# 0 Student.all should return all of the student instances
# 0 Student#add_boating_test should initialize a new boating test with a Student (Object), a boating test name (String), a boating test status (String), and an Instructor (Object)
# 0 Student.find_student will take in a first name and output the student (Object) with that name
# 0 Student#grade_percentage should return the percentage of tests that the student has passed,
#   a Float (so if a student has passed 3 / 9 tests that they've taken, this method should return the Float 33.33)
