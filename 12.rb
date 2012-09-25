

def divisors(n)
    ct = 2
    mid = n/2
    for i in 2..mid
        if n%i==0
            ct+=1
        end
    end
    return ct
end


triangle =  {}
triangle[:last] = 1
triangle[:num] = 1

desired = ARGV[0].to_i

while (divisors(triangle[:num]) < desired)
    for i in 0..25
       triangle[:last] += 1
       triangle[:num] += triangle[:last]

    end
end

puts triangle[:num]


