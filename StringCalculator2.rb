#Create a simple String calculator object with a method add(numbers)
#that takes a string as a parameter and returns an integer

class Calculator
	def add(string)
		string.split("\n").reduce(0) {|sum, x| sum + x.to_i}
	end
end

puts Calculator.new.add("1\n2\n8")

=begin

CLASS EXAMPLE:

class StringCalculator
	def add(some_numbers)
		some_numbers.split("\n")
			.map { |n| n.to_i }
			.reduce(0, :+)
	end
end
=end