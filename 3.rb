#!/Users/ccun/.rvm/rubies/ruby-1.9.2-p290/bin/ruby

def mod_exp (x,y,n)
	if y==0
		return 1
	end
	z = mod_exp(x,y/2,n)
	if y%2==0
		return (z**2) % n
	else
		return (x * z * z) % n	
	end
end

def isprime (n)
	range = (2...n).to_a
	booly = true
	range.each do |num|
		if mod_exp(num,n-1,n) != 1
			booly = false
		end
		break if booly == false
	end
	return booly
end

def nextprime (n)
	m = n+1
	while isprime(m)==false
		m+=1
	end
	return m
end

def func(num)
	n = num
	m = n/2
	i = 2
	while i != m
		if n%i==0
			n = n/i
		else
			i = nextprime(i)
		end
	
		if i>=n
			break
		end
	end
	return n
end

begin_time = Time.now

n = ARGV[0].to_i # 600851475143
puts func(n)

end_time = Time.now

puts %Q(Time elapsed #{(end_time-begin_time)*1000} ms)

exit


for i in (0...n).to_a.reverse
	if ( (n % i == 0) and isprime(i) )
		puts "ans: #{i}"
		break
	end
end

#for i in (0..1000).to_a
#	puts "#{i} prime? #{isprime(i)}"
#end

