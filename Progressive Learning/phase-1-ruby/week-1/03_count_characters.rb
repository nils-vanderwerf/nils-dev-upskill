# PROBLEM: Count Character Frequency
# Given a string, return a hash where each key is a character
# and the value is how many times it appears. Ignore spaces.
#
# P —
#
# E —
#   count_chars("hello")      #=> { "h" => 1, "e" => 1, "l" => 2, "o" => 1 }
#   count_chars("aab")        #=> { "a" => 2, "b" => 1 }
#   count_chars("a b")        #=> { "a" => 1, "b" => 1 }  (space ignored)
#   count_chars("")            #=> {}
#
# D — I would split the string into chars, and on the derived array, use each with object, building a hash with a counter on each loop and returning the hash
#
# A —
#   1. Split string into chars
#   2. Iterate over using each with object, intiating a hash with Hash.new(0), and a counter to iterate with
#   3. skip if character is an empty string
#.  4. Return produced hash
#
# C —
def count_chars(str)
  split_string = str.chars.reject {|char| char == " "}
  split_string.each_with_object(Hash.new(0)) do |char, count|
    count[char] += 1
  end
end
