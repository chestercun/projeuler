# one digit letter hash
odh = {
			:one  => 3,
			:two  => 3,
			:three=> 5,
			:four => 4,
			:five => 4,
			:six  => 3,
			:seven=> 5,
			:eight=> 5,
			:nine => 4,
	}
# special letter hash
sdh = {
			:eleven => 6,
			:twelve => 6,
			:thirteen => 8,
			:fourteen => 8,
			:fifteen => 7,
			:sixteen => 7,
			:seventeen => 9,
			:eighteen => 8,
			:nineteen => 8,
		}
# ten's digit letter hash
tdh = {
			:twenty => 6,
			:thirty => 6,
			:forty => 5,
			:fifty => 5,
			:sixty => 5,
			:seventy => 7, 
			:eighty => 6,
			:ninety => 6,
		}
# big digit letter hash
bdh = {
			:hundred => 7,
			:thousand => 8,
		}

# init sum
sum = 0

# just hundred count
# ie. "hundred" from 100,101,103..999
sum += 9 * 100 * bdh[:hundred]
# the one, two, three, in 100,200,300...
for i in odh.values
	sum += i*100
end

# basic set of numbers 1,2,3..99
basic_set = 0
# 1,2,3..9, 21-29, 31-39,...91-99
for i in odh.values
	basic_set += i*9
end
# ten, 10
basic_set += 3
# specials 11,12,13..19
for i in sdh.values
	basic_set += i
end 
# 20,30,40..90
for i in tdh.values
	basic_set += i*10
end

# accumulate sets, 10 of them
sum += basic_set * 10

# 3 letters, 99 numbers per set of 100, 9 sets
and_ct = (3*99)*9
sum += and_ct

# 1000
sum += odh[:one] + bdh[:thousand]

puts sum


