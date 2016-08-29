# server.rb
require "sinatra"
require "pry"
require_relative "lib/login"

enable(:sessions)

get "/" do
	"My first Sinatra app."
end

get '/about' do
	erb(:about)
end

get "/users/:username" do
	@username = params[:username]
	erb(:userprofile)
end

# get "/hours/ago/:time" do
# 	time = Time.now
# 	time_now = time.hour
# 	@parameter = params[:time]
# 	@time_hours_ago = time_now - @parameter.to_i
# 	erb(:about)
# end

# post "/sessiontest" do 
# 	text = params[:session]
# 	# binding.pry
# 	session[:saved_value] = text
# 	redirect to "/sessionshow"
# end

# get "/sessionform" do
# 	erb(:userprofile)
# end

# get "/sessionshow" do
# 	@cookies = "Now in the session: #{session[:saved_value]}" 
# 	erb(:session)	
# end

post '/receivinginfo' do
	username = params[:firstname]
	password = params[:password]
	session[:userprofile] = username
	test = Login.new(username, password)
	user = test.valid

	if user != nil
		redirect('/profile')
	else 
		redirect('/profileform')
	end
end

get '/profileform' do
	erb(:userprofile)
end

get '/profile' do
	@user = session[:userprofile]
	erb(:profilepage)
end








