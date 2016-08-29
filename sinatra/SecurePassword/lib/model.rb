require 'pry'

class PasswordChecker

    attr_reader :validator

    def initialize(email,password)
        @password=password
        @email=email
        @validator=[]
    end

    def size_check
        size = @password.size 
        if size > 7 
            @validator << true
        else
            @validator << false
        end
        @validator
    end

    def check
        counter=0
        if @password.match(/[a-z]/) != nil
            counter+=1
        end
        
        if @password.match(/\d/) != nil
            counter+=1
        end

        if @password.match(/\W/) != nil
            counter+=1
        end
        if @password.match(/[A-Z]/) != nil
            counter+=1
        end

        if counter >= 4 
            @validator << true
        end
        @validator
    end

    def check2
        array=[]
        check=@email.split("@")
        array << check[0]
        print array
        domain = check[1].to_s
        array_2=domain.split(".")
        array << array_2[0]
        array.each_with_index do |element,index| 
            if @password.include?(element)
                print "Invalid password"
            else
                @validator << true
            end
        end
        @validator
    end

    def reveal
        if @validator.include?(false)
            return "Password wrong!"
        else 
            return "Correct password"
        end
    end
end

# password = PasswordChecker.new("josema@code.com","a@a1aaAa")

# password.size_check
# password.check
# password.validator
# password.check2
# print password.validator

# puts password.reveal