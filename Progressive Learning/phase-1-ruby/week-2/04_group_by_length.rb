# PROBLEM: Group Words by Length
# Given an array of strings, return a hash where keys are word lengths
# and values are arrays of words with that length.
#
# P — We want to input an array of strings and return a hash where the keys are the length of the strings passed and the values are arrays of words of that length.
#
# group_by_length(["cat", "dog", "elephant", "ant", "ox"])
#   #=> { 3 => ["cat", "dog", "ant"], 8 => ["elephant"], 2 => ["ox"] }# E —
#   
#
#   group_by_length([])  #=> {}
#
# D — I'm going to reach for each_with_object, intialising an empty hash and passing in arguments of the word and result, and then setting the key as word.count and the value as either an initalised empty array or pushing it into an existing array
#
# A —
#   1. Use Each with object
#   2. Initialise empty hash
#   3. Pass in word, result
#   4. Build result[word.length] ||= []
#.  5. result[word.length] << word
#. 
# C —
def group_by_length(words)
  words.each_with_object({}) do |word, result|
    result[word.length] ||= []
    result[word.length] << word
  end
end
