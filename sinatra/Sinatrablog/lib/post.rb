require 'pry'

class Post
	attr_reader :title, :date, :content
	def initialize (title, date, content)
		@title = title
		@date = date
		@content = content
	end

	def print
		"#{@title}\n + #{@date} + #{@content}"
	end
end

# class Sponsored < Post
# 	def print
# 		"********#{@title}********\n + #{@date} + #{@content}"
# 	end
# end

new_post= Post.new("Sofia", Time.now, "Mi nombre es Sofia")
