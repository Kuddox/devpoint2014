def add(x,y)
	x + y
end
def minus(x,y)
	x - y
end
def multiply(x,y)
	x * y
end
def divide(x,y)
	x / y
end

again = 'y'

puts "Welcome to Terminal Calculator!"
	while again == 'y'
		puts "Enter your first value"
			v1 = gets.chomp.to_i.to_f

		puts "Would you like to: \n[a]dd,[s]ubtract,[m]ultiply,[d]ivide?"
			op = gets.chomp.to_s

		puts "Enter your second value"
			v2 = gets.chomp.to_i.to_f

			case op.downcase
				when 'a' then puts add(v1,v2)
					operator = :+
				when 's' then puts minus(v1,v2)
					operator = :-
				when 'm' then puts multiply(v1,v2)
					operator = :*
				when 'd' then puts divide(v1,v2)
					operator = :/
				else puts "That's not an option..."
			end
		puts "..again? (y/n)"
		again = gets.chomp
	puts "Have a nice day!"
	end

		until again == "n"
	end
