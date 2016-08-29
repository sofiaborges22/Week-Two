require 'pry'
require 'imdb'


class Movies
	attr_reader :term, :movies_list, :movie_result, :year
	def search(term)
		#@term = term
		@movie_result = []
		@movies_list = Imdb::Search.new(term).movies[0..20]
		#binding.pry
		counter = 0 
		@movies_list.each do |movie|
			if counter < 9
				if movie.poster != nil
					@movie_result.push(movie)
					counter += 1
				end
			end
		end
	end
end

