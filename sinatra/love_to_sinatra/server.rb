require 'sinatra'
require 'sinatra/reloader'
require_relative 'models/blog.rb'
require_relative 'models/post.rb'
require 'pry'

enable(:sessions)

nuevo_post = Post.new("Sofia", "Category 1", "Escalicha", 9374, "Sofia es trending")
nuevo_post2 = Post.new("Miguel", "Category 2", "Escalicha", 5343, "Miguel es trending")
nuevo_post3 = Post.new("Guille", "Category 1", "Escalicha", 2342, "Guille es trending")

el_mejor_blog = Blog.new
el_mejor_blog.add_post(nuevo_post)
el_mejor_blog.add_post(nuevo_post2)
el_mejor_blog.add_post(nuevo_post3)


get "/" do
	@list = el_mejor_blog.posts
	erb(:view)
end

get "/post_details/:index" do
	@index = params[:index].to_i
	@list = el_mejor_blog.posts
	erb(:blogview)
end

get "/new_post" do
	# is gonna show the form
	erb(:newpost)
end

post "/addpost" do
	new_title = params[:title]
	new_category = params[:category]
	new_author = params[:author]
	new_date = params[:date]
	new_text = params[:text]
	new_post = Post.new(new_title, new_category, new_author, new_date, new_text)
	el_mejor_blog.add_post(new_post)
	redirect('/')

	# get all params
	# create a new post with the info of that params
	# add the new post to blog
	# redirect to the route "/"
end



