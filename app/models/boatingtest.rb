class BoatingTest

    @@all = []

    attr_reader :test_name, :instructor, :student
    attr_accessor :status

    def initialize(test_name, instructor, student, status)
        @test_name = test_name
        @instructor = instructor
        @student = student
        @status = status 
        @@all << self 
    end

    def self.all
        @@all 
    end 
end
