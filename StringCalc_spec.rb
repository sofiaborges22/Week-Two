require_relative 'StringCalculator2'

RSpec.describe "My String Calculator" do
	it 'returns 0 when I input an empty string' do
		expect(Calculator.new.add('')).to eq(0)
	end

	it 'returns 1 when I input a string 1' do
		expect(Calculator.new.add('1')).to eq(1)
	end

	it 'returns 2 when I input a string 2' do
		expect(Calculator.new.add('2')). to eq(2)
	end

	it 'returns 11 when I input 1, 2, 8' do
		expect(Calculator.new.add("1\n2\n8")). to eq(11)
	end
end
