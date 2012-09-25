
load "printmatrix.rb"

#a = [[1,2,3],[2,3,4],[3,4,5,]]
#printmatrix(a)

a = []
file = File.open("input11.txt","r")

file.each { |line|
	str = ""
	str << line
	numbers = str.split(" ")
	for i in 0..numbers.length-1
		numbers[i] = numbers[i].to_i
	end
	a.push(numbers)
}


printmatrix(a)



