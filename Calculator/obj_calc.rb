class Calc
	attr_reader :x, :y

	def initialize(x,y)
		@x, @y = x, y
	end
	puts "Welcome to OriOb Calculator!"
	def self.description
		"Performs basic mathematical operations"
	end

	def add
		x + y
	end
	def subtract
		x - y
	end
	def multiply
		x * y
	end
	def divide
		x.to_f/y.to_f
	end
end
