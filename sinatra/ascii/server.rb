require 'sinatra'
require 'artii'
require 'pry'

get "/ascii/:one_random_word/?:font_type?" do
	word = params[:one_random_word]
	font = params[:font_type]

	if font == nil
	 a = Artii::Base.new :font => 'alligator'
	 @ascii = a.asciify(word)
	 erb(:ascii)
	else 
	 a = Artii::Base.new :font => font
	 @ascii = a.asciify(word)
	 erb(:ascii)
	end
end

get "/ascii/perro/?special?/?secret?" do
	erb(:secret_image)
end