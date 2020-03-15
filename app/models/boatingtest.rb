class BoatingTest

    attr_reader :student, :boating_test, :instructor
    attr_accessor :status

    @@all_test = []

    #Student is an object,  boating_test is a string, and instructor is an object
    def initialize(student, boating_test, status, instructor)
        @student = student
        @boating_test = boating_test
        @status = status
        @instructor = instructor
        @@all_test << self
    end

    def self.all
        @@all_test
    end

end
