# PROBLEM: Find Duplicates
# Given an array of integers, return a new array containing only the
# elements that appear more than once. No duplicates in the result.
#
# P — Given an array of integers, return a new array containing only eements that appear more than once. No duplicates in the result. Each element can only appear once
#
# E —
#   find_duplicates([1, 2, 3, 2, 4, 3])  #=> [2, 3]
#   find_duplicates([1, 2, 3])            #=> []
#   find_duplicates([])                   #=> []
#   find_duplicates([5, 5, 5])            #=> [5]
#
# D — Use the tally method to transform it into a hash, check the value for each key, and if its more than one add it to a new array
#
# A —

#   1. Create a hash tally of each unique item in the array
#   2. Filter by keys with a value properrty greater than 1
#.  3. select just the keys of that  
#
# C —
def find_duplicates(arr)
  tally_hash = arr.tally
  tally_hash.select { |k, v| v > 1}.keys
end
