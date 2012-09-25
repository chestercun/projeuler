

sum = 0
file = File.open("input13.txt","r")
file.each{ |line|
	sum += line.to_i
	#puts line
}

#puts sum

str = sum.to_s
puts str[0..9]

