

fibby = [1,1]
desired = 1000

while fibby[-1].to_s.length < desired
	fibby.push(fibby[fibby.length-1]+fibby[fibby.length-2])
end

puts fibby.length

