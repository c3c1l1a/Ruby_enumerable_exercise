module MyEnumerable
	def all?
		each do |y|
			return false unless yields y
		end
		true
	end

	def any?
		each do |y|
			return true if yields y
		end 
		false
	end 

	def filter
		newList = []
		each do |y|
			newList<<y if yields y
		end
		return newList
	end 
end
