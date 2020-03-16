
class Instructor

    def initialize(name)
        @name = name
    end 


    def pass_student(student, test)

        BoatingTest.all.select |test| if student == student && test == test 
        status = "pass" 
        else new_test = BoatingTest.New(student, test, "Pass", self)
        end 

  


    end 

    def fail_student(student, test)

        BoatingTest.all.select |test| if student == student && test == test 
        status = "pass" 
        else new_test = BoatingTest.New(student, test, "Fail", self)
        end 

    end 




end
