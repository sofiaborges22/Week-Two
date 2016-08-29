require "sinatra"
require "pry"
require_relative "lib/model"

enable(:sessions)

get "/" do
	"Enter your email and password"
	(:login)
end

post "/" do
	email = params[:email]
	password = params[:password]
	session[:userprofile] = username
	(:login)
	test = PasswordChecker.new(email, password)
	user = test.reveal

	if user != nil
		redirect('/congratulations')
	else
		redirect('/')
	end
end

get "/congratulations" do
	@user = session[:userprofile]
	(:congratulations)
end