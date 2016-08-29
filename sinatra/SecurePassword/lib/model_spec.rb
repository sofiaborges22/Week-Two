require_relative 'model'

RSpec.describe "PasswordChecker" do

	before :each do
		@password = PasswordChecker.new
	end

	it "must be longer than 7 characters" do
		expectation = @password.check_password()
		expect ("sdjfsdfsdf").to eq(8)
	end

	# it "must contain at least 1 letter" do
	# 	expect
	# end

	# it "must contain at least 1 number" do
	# 	expect
	# end

	# it "must contain at least 1 symbol" do
	# 	expect
	# end

	# it "must contain 1 uppercase" do
	# 	expect
	# end

	# it "must contain 1 lowercase" do
	# 	expect
	# end

	# it "must not contain name" do
	# 	expect
	# end

	# it "must not contain email" do
	# 	expect
	# end
end