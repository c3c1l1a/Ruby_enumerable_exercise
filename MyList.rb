require './MyEnumerable.rb'

class MyList
	include MyEnumerable
	
	def initialize(*args)
		@list = args
	end 

	def all? 
		@list.all? {|e| e < 5}
	end

	def any?
		@list.any? {|e| e == 2}
	end 

	def filter
		@list.filter {|e| e.odd?} 
	end
end 

myList = MyList.new(1, 2, 3, 4)
p myList.all? 
p myList.any?
p myList.filter

