# PROBLEM: Pig Latin
# Translate a word into Pig Latin.
#
# Rules:
#   - If the word begins with a vowel (a, e, i, o, u), add "ay" to the end of each word.
#   - If the word begins with a consonant, move all leading consonants to the
#     end and add "ay".
#   - If there are no vowels, move the first letter to the end of the word and add "ay" 
#   - Treat 'y' as a consonant at the start of a word.
#
# P — We want to make a fun method which speaks in pig latin.
#   - If the word begins with a consonant, move all leading consonants to the
#     end and add "ay".
#   - If there are no vowels, move the first letter to the end of the word and add "ay" 
#   - Treat 'y' as a consonant at the start of a word.
#
# E —
#   pig_latin("apple")   #=> "appleay"
#   pig_latin("cherry")  #=> "errychay"
#   pig_latin("school")  #=> "oolschay"
#   pig_latin("ear")     #=> "earay"
#
# D — Data structure, string manipulation and ruby mapping
#
# A —
#   1. Split the word into sub words  Y 
#   2. For each word, store the index of the first vowel Y
#      a. if there isn't one, set it to one
#   3. iterate through each word. Move the consonents to the end if it starts with them, adding "ay if its purely a vowel"
#.  4. Take note of index of capital letters
#. 5. Capitalize the equivalent capital index
#.  6. Join the words
# C —
def pig_latin(string)
  string.split.map do |word|
    vowel_index = word.index(/[aeiou]/i) || 1 # no vowels: only move first consonant, per rule, using regex
    if vowel_index == 0
      word + "ay"
    else
      first_part = word.slice(0..vowel_index - 1)
      second_part =  word.slice(vowel_index..-1)
      result = (second_part + first_part + "ay").downcase
      word[0].match?(/[A-Z]/) ? result.capitalize : result
    end
  end.join(" ")
end

p pig_latin("apple")   # => "appleay"
p pig_latin("cherry")  # => "errychay"
p pig_latin("school")  # => "oolschay"
p pig_latin("ear")     # => "earay"
p pig_latin("HELLO")

