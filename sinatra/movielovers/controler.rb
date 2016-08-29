#Inside of server.rb
require 'sinatra'
require 'pry'
# We're going to need to require our class files
require_relative('lib/model.rb')

find = Movies.new
# find.search(term)
selection = Random.new


get '/' do
	erb(:form)
end

post '/results' do
	new_term = params[:new_term]
	find.search(new_term)
	redirect('/quiz')
end

get '/quiz' do
	@index = rand(0..8)
	@list = find.movie_result
	erb(:movieresults)
end

post '/quiz' do
	erb(:movieresults)
end

