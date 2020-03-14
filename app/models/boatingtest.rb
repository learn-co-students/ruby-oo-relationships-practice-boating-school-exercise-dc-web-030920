class BoatingTest

    attr_accessor :student, :name, :instructor, :status
    @@all = []
    def initialize(student, name, status, instructor)
        @student = student
        @name = name
        @status = status
        @instructor = instructor
        @@all << self
    end

    def self.all
        @@all
    end

    
end


# BoatingTest class:
# 0 should initialize with Student (Object), a boating test name (String), a boating test status (String), and an Instructor (Object)
# 0 BoatingTest.all returns an array of all boating tests
