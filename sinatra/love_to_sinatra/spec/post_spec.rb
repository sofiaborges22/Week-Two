require_relative '../server.rb'
require 'rspec'
require 'rack/test'

describe 'Server Service' do
  include Rank::Test::Method

  it "should load the home page" do
    get "/"
    expect(last_responde).to be_ok
  end




  def app
    Sinatra::Application
  end
end
