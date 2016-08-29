require_relative '../server.rb'
require 'rspec'
require 'rack/test'

describe 'Server Service' do
	include Rack::Test::Methods

	it 'should load the home page' do
		get '/'
		expect(last_response).to be_ok
	end
	
	def app
		Sinatra::Application
	end
end



