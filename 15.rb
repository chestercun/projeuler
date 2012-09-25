
# add factorial method
class Integer
    def factorial_itr
        f = 1; for i in 1..self; f*=i; end; f
    end
    alias :factorial :factorial_itr
end

def nCr(n,r)
    return n.factorial / (n-r).factorial / r.factorial
end

# this is a pascal's triangle inspired problem
def paths(n)
    return nCr(2*(n-1),n)
end

#puts nCr(4,2)
puts nCr(2*20,20)


