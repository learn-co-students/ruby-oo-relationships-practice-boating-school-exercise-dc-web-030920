class Student

    @@all = [] 

    def initialize(first_name) 
        @first_name = first_name 

        @@all << self 

    end 

    def self.all
        @@all 
    end 

    def add_boating_test(self, test_name, status, instructor)

        new_test = BoatingTest.new(self, test_name, status, instructor)

    end 


    
end
