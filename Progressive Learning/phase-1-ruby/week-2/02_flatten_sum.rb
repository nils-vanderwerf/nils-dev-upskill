# PROBLEM: Flatten and Sum
# Given a nested array of integers (any depth), return the sum of all integers.
# Do NOT use .flatten (implement the flattening yourself).
#
# P — We want to create a single array, any depth not nested, of any array elements, and sum up those integers
# we can't use .flatten
# E —
#   flatten_sum([1, [2, 3], [4, [5]]])  #=> 15
#   flatten_sum([1, 2, 3])              #=> 6
#   flatten_sum([])                     #=> 0
#   flatten_sum([[[]]])                 #=> 0
#
# D — 
# check if it is a number or an array
# if it is a number add it to the some
# if it is an array, loop over elements and call itself
# and repeat

# A —
# 1. Start with a total of 0
# 2. loop through each element
# 3. If it is a number, add it to the total
# 4. If it is an array call flatten_sum on it and add the result to the total
#
# C —
def flatten_sum(arr)
  arr.reduce(0) do |sum, element|
    if element.is_a?(Array)
      sum + flatten_sum(element)
    else
      sum + element
    end
  end
 end
