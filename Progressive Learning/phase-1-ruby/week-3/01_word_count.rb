# PROBLEM: Word Count
# Given a sentence string, return a hash counting occurrences of each word.
# Case-insensitive. Ignore punctuation.
#
# P — We are given a sentence string and want to return a hash counting occurances of that word. 
# It is case insensitive, and we are not concerned about punctuation
#
# E —
#   word_count("the cat sat on the mat")
#   #=> { "the" => 2, "cat" => 1, "sat" => 1, "on" => 1, "mat" => 1 }
#
#   word_count("Hello, hello!")
#   #=> { "hello" => 2 }
#]
#   word_count("")  #=> {}
#
# D — Split the sentence, use a hash to create a lowercaSE key for each word and intiate ort increment the counter for each word
#
# A —
#   1. Split sentence
#   2. Use Each with object passing in the starting value, a new hash starting at 0
#   3. pass in word, count
#.  4. Increment count for that word
#
# C —
def word_count(sentence)
  clean_sentence = sentence.downcase.scan(/[a-z0-9]+(?:[-'][a-z0-9]+)*/)
  clean_sentence.each_with_object(Hash.new(0)) do |word, freq|
    freq[word] += 1
  end
end
