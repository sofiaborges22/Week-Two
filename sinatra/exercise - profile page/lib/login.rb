class Login
	def initialize(username, password)
		@username = username
		@password = password
		@accounts = {'sofia' => '1234'}
	end
	def valid
		@accounts.each do |key, value|
			if key == @username && value == @password
				return @username
			end
		end
		nil
	end
end