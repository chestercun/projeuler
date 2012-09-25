
# build letter hash
lh = {}
letter = "A"
score = 1
while letter != "AA"
	lh[letter] = score
	score += 1
	letter = letter.next
end

# process file
file = File.open("names_input22.txt","r")
name_str = ""
file.each{ |line|
	name_str << line
}

# process names
#  must use gsub for "global" replace
name_str.gsub!(/[^A-Z]/," ")
names = name_str.split()
names = names.sort

def calc(name, letterhash)
	sum = 0
	for i in 0..name.length-1
		sum += letterhash[name[i]]
	end
	return sum
end

# calculate total score
total = 0
for i in 0..names.length-1
	total += (i+1) * calc(names[i],lh)
end

# show answer
puts total

