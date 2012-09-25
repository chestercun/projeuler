# pass in a string
def sumdigits(str)
	digits = str.split("")
	sum = 0
	for i in digits
		sum += i.to_i
	end
	return sum
end


