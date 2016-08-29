require_relative 'Fizzbuzz'

RSpec.describe "FizzBuzz" do
	it "receives a number and outputs a number" do
		@buzzfizz = FizzBuzz.new
		expect(@buzzfizz.fizz(7)).to eq(7)
	end
	it "replaces variables of 3 with fizz" do
		@buzzfizz = FizzBuzz.new
		expect(@buzzfizz.fizz(3)).to eq("fizz")
	end

	it "replaces variables of 5 with buzz" do
		@buzzfizz = FizzBuzz.new
		expect(@buzzfizz.fizz(5)).to eq("buzz")
	end
	it "replaces variables of 3 and 5 with fizzbuzz" do
		@buzzfizz = FizzBuzz.new
		expect(@buzzfizz.fizz(15)).to eq("fizzbuzz")
	end
end