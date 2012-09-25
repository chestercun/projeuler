#!/Users/ccun/.rvm/rubies/ruby-1.9.2-p290/bin/ruby

begin_time = Time.now

# work goes here
file = File.new("input8.txt","r")
str = ""
file.each {|line|
	str << line
}

str.gsub!(/\n/,"")

# start and end index
si = 0
ei = str.length-5
running = 0
while si <= ei
	# calculate running
	product = 1
	for i in (0..4).to_a
		product *= str[si+i].to_i
	end
	# greater ?
	if product > running
		running = product
	end
	si += 1
end

puts running

end_time = Time.now

puts %Q(Time elapsed #{(end_time-begin_time)*1000} ms)


