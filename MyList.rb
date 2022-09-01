require './MyEnumerable.rb'

class MyList
	include MyEnumerable
	
	def initialize(*args)
		@list = args
	end 

	def all? 
		@list.all? {|e| e < 5}
	end

end 

myList = MyList.new(1, 2, 3, 4)
p myList.all? 

