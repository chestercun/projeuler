
load "sumdigits.rb"

class Integer
	def factorial_itr
		f = 1
		for i in 1..self
			f *= i
		end
		f
	end
	alias :factorial :factorial_itr
end

# pass in string of numbers to
#   sumdigits( number ) 
puts sumdigits((100.factorial).to_s)







