require 'common'
problem_number = $0.sub /\.rb$/, ''

# create an array of fibonacci #'s
def fib_array (val)
	fibby = [0,1]
  fibby.push(fibby[-1]+fibby[-2]) while fibby.last < val
	fibby.pop
	fibby
end

def sum_even_values (array)
  array.select {|i| i%2==0}.sum
end

time "Problem ##{problem_number}" do
  puts sum_even_values( fib_array(4_000_000) )
end
