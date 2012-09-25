# Problem 1
#
# If we list all the natural numbers below 10
# that are multiples of 3 or 5, we get 3,5,6,9.
#
# This sums to 23.
# Find the sum of all multiples of 3 or 5
# under 1000.
#
#
# Note: inclusion/exclusion is probably
# the easiest way to solve this. No code
# is probably the best code.
# 
# floor(999/3) = 333
# floor(999/5) = 199
# floor(999/15) = 66
#
# use gauss' formula n*(n+1)/2
# 333*334/2 = 55,611
# 199*200/2 = 19,900
# 66*67/2 = 2,211
#
# Ans: 3(55,611)+5(19,900)-15(2,211) = 233,168

# Time to flex the ruby skills
# https://github.com/chestercun/common
require 'common'
problem_number = $0.sub /\.rb$/, ''

def sum_all_multiples(n=1000,multiples_array)
	list = (1...n).to_a
  list.select! { |x| x.mod_array?(multiples_array) }
	list.sum
end

time "Problem ##{problem_number}" do
  puts sum_all_multiples(1000,[3,5])
end
