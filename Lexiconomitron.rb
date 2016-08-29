class Lexiconomitron
	def eat_t(string)
		string.gsub(/[Tt]/, '')
	end

	def shazam(array)
		array_first = array.first.reverse
		array_last = array.last.reverse
		united = "#{array_first} " + "#{array_last}"
		eat_t(united)
	end

	def oompa_loompa(array)
		arrayb = []
		array.each do |x|
			if x.size <= 3
				arrayb.push(x)
			end
		end
		arrayb.each do |x|
			eat_t(x)
		end
	end
end

puts Lexiconomitron.new.eat_t("great scott!")
puts Lexiconomitron.new.shazam(["This", "is", "a", "boring", "test"])
puts Lexiconomitron.new.oompa_loompa(["if", "you", "wanna", "be", "my", "lover"])