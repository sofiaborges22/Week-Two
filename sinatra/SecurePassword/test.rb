require 'pry'
class Passwordchecker 

def check_password(password)
      if password.match(/[a-z]/) && password.match(/[A-Z]/)
        true
      else
        false
        binding.pry
      end
end
end

password = Passwordchecker.new
password.check_password("borges")
