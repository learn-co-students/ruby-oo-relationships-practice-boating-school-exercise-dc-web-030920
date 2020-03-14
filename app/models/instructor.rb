class Instructor
    attr_reader :name
    @@all =[]

    def initialize(name)
        @name = name
        @@all << self
    end

    def self.all
        @@all
    end

    def pass_student(student, name)
       temp = BoatingTest.all.each {| test | test.student == student}.find { |test| test.name == name}
       if temp
        temp.status = "PASSED"
        temp.instructor = self
        return temp
       else
        return BoatingTest.new(student, name, "PASSED", self)
       end
    end

    def fail_student(student, name)
        temp = BoatingTest.all.each {| test | test.student == student}.find { |test| test.name == name}
        if temp
         temp.status = "FAILED"
         temp.instructor = self
        #  binding.pry
         return temp
        else
         return BoatingTest.new(student, name, "FAILED", self)
         
        end
        
       
        # binding.pry
     end

end

# Instructor class:
# 0 initialize with a name
# 0 Instructor.all should return all instructors
# 0 Instructor#pass_student should take in a student instance and test name. 
#   If there is a BoatingTest whose name and student match the values passed in, 
#   this method should update the status of that BoatingTest to 'passed'. If there is no matching
#   test, this method should create a test with the student, that boat test name, and the 
#   status 'passed'. Either way, it should return the BoatingTest instance.
# 0 Instructor#fail_student should take in a student instance and test name. Like #pass_student, 
#   it should try to find a matching BoatingTest and update its status to 'failed'. If it cannot find an 
#   existing BoatingTest, it should create one with the name, the matching student, and the status 'failed'.
