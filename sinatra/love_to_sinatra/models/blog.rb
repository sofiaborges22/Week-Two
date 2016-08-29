require 'pry'
require_relative 'post.rb'

class Blog
	attr_reader :posts

  def initialize
    @posts = []
  end

  def add_post(post)
    @posts.push(post)
  end

  def sort_post
  	@posts.sort! {|x, y| y.date <=> x.date}
  end

end



