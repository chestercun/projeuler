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

def sieve (n)
	puts "nothing here"
end

def hash_check (hash,num)
	keys = hash.keys.sort
	for i in (keys)
		if (num % i == 0)
			return false
		end
	end
	return true
end

begin_time = Time.now

#primes = [2,3,5,7,11,13]
#while (primes.length < 1000)
#	primes.push(nextprime(primes[-1]))
#end

#puts primes

#puts primes[10001-1]

hash = {2=>nil,3=>nil,5=>nil,7=>nil,11=>nil}
i = 13
while (hash.length!=10001)
	if hash_check(hash,i)
		hash[i] = nil
	end
	i+=2	
end

k = hash.keys.sort.reverse
puts k[0]

end_time = Time.now

puts %Q(Time elapsed #{(end_time-begin_time)*1000} ms)


