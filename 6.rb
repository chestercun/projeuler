#!/Users/ccun/.rvm/rubies/ruby-1.9.2-p290/bin/ruby

def gauss (n)
	return (n*(n+1))/2
end

def sumsquares (n)
	sum = 0
	range = 1..n
	for i in range.to_a
		sum += i**2
	end
	return sum
end

begin_time = Time.now

# work goes here
puts (gauss(100)**2)-sumsquares(100)

end_time = Time.now

puts %Q(Time elapsed #{(end_time-begin_time)*1000} ms)


