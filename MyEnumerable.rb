module MyEnumerable
	def all?
		each do |y|
			return false unless yields y
		end
		true
	end
end