#Create a simple String calculator object with a method add(numbers)
#that takes a string as a parameter and returns an integer

class Calculator
	def add(string)
		@string = string
		stringsplit = @string.split(',')
		stringsplit.reduce(0) do |sum, x| 
			values = x.to_i
			sum += values
		end
	end
end

string = Calculator.new
puts string.add("1, 2, 8")