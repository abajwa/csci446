module GamesHelper
	
	def get_rating num
		if num == 1
			return "Horrible"
		elsif num == 2
			return "Good"
		elsif num == 3
			return "Meh."
		elsif num == 4
			return "Amazing"
		else
			return "Unrated"
		end
	end
	
end
