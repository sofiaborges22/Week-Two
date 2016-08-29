class FizzBuzz
	def fizz(numbers)
		i_3 = (numbers%3==0)
		i_5 = (numbers%5==0)
			if i_3 && i_5 
				'fizzbuzz'
			elsif i_3
				'fizz'
			elsif i_5
				'buzz'
			else
				numbers
			end
	end
end

buzzfizz = FizzBuzz.new
puts buzzfizz.fizz(15)