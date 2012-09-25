#!/Users/ccun/.rvm/rubies/ruby-1.9.2-p290/bin/ruby

def sieve (n)
	a = (0...n).to_a
	a[0] = 0
	a[1] = 0
	for i in (2...n).to_a
		if a[i]>0
			j = i*2
			while j < n
				a[j] = 0
				j += i
			end
		end
	end
	return a
end

begin_time = Time.now

# work here
sum = 0
num = ARGV[0].to_i
pirates = sieve(num)

#puts pirates

for p in pirates
	sum += p
end
puts sum

end_time = Time.now

puts %Q(Time elapsed #{(end_time-begin_time)*1000} ms)


