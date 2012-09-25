
# input array a
def printmatrix(a)
	for i in 0..a.length-1
		str = ""
		for j in 0..a[i].length-1
			t = a[i][j]
			if t.is_a? Integer
				str << t.to_s
			elsif t.is_a? String
				str << t
			end
			str << " "
		end
		puts str
	end
end

