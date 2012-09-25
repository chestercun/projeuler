#!/Users/ccun/.rvm/rubies/ruby-1.9.2-p290/bin/ruby

def ispalindrome (n)
	str = n.to_s
	str2 = str.reverse
	return str==str2
end

def tripledigitfactor (n)
	for i in (100..999).to_a
		if n % i == 0 and n/i<=999 and n/i >= 100
			#puts i
			#puts n/i
			return true
		end
	end
	return false
end

begin_time = Time.now

# proj euler 4
max = 999*999
min = 100*100
ans = 0
for i in ((min..max).to_a.reverse)
	if ispalindrome(i)==true and tripledigitfactor(i)==true
		ans = i
		break
	end
end
puts ans

end_time = Time.now

puts %Q(Time elapsed #{(end_time-begin_time)*1000} ms)

exit


