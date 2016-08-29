require 'sinatra'
require 'shotgun'
require 'pry'
require_relative "lib/calculator"

get "/" do
	erb(:add)
end

get "/result" do
	erb(:result)
end

post "/calculate" do
  first = params[:first_number].to_f
  second = params[:second_number].to_f
  operations = params[:operation]

  if operations == "addition"
  	result = Calculator.addition(first, second)
  	@calculation = "#{first} + #{second} = #{result}"
  elsif operations == "subtraction"
  	result = Calculator.subtraction(first, second)
  	@calculation = "#{first} - #{second} = #{result}"
  elsif operations == "multiplication"
  	result = Calculator.multiplication(first, second)
  	@calculation = "#{first} * #{second} = #{result}"
  elsif operations == "division"
  	result = Calculator.division(first, second)
  	@calculation = "#{first} / #{second} = #{result}"
  end
erb(:result)
end

post "/calculate/save" do
	value = params[:operation]
	if value == "save"
		IO.write("result.txt", @calculation)
	end
erb(:result)
end


