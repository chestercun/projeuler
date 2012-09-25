#!/Users/ccun/.rvm/rubies/ruby-1.9.2-p290/bin/ruby

begin_time = Time.now

# work goes here
for a in (1...1000).to_a
	for b in (a+1...1000).to_a
		for c in (b+1...1000).to_a
			if a+b+c==1000 and a**2+b**2==c**2
				product = a*b*c
				puts product
				end_time = Time.now
				puts %Q(Time elapsed #{(end_time-begin_time)*1000} ms)
				exit
			end
			if (a+b+c > 1000)
				break
			end
		end
	end
end

end_time = Time.now

puts %Q(Time elapsed #{(end_time-begin_time)*1000} ms)


