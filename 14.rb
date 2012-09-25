
def seq_ct (n,hash)
    return hash[n] if hash[n]
    if n%2==0
        total = 1 + seq_ct(n/2,hash)
    else
        total = 1 + seq_ct(3*n+1,hash)
    end
    hash[n] = total
    return total
end

sash = {1=>1,2=>2}

running = 0
keynum = 0
for i in 2...1_000_000
    temp = seq_ct(i,sash)
    if temp > running
        running = temp
        keynum = i
    end
end

#puts sash
#puts sash.values.sort.reverse[0]

puts keynum

