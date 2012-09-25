
num = 2**1000
str = num.to_s
digits = str.split("")
sum = 0
digits.each{|d| 
	sum += d.to_i
}
puts sum



