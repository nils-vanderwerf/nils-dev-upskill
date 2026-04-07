# PROBLEM: Palindrome Check
# Return true if a string reads the same forwards and backwards.
# Ignore case — "Racecar" is a palindrome.
#
# P — A string, case ignored, has to be able to be read the same forwards and backwards. An empty string is read as true
#
# E —
#   palindrome?("racecar")  #=> true
#   palindrome?("Racecar")  #=> true
#   palindrome?("hello")    #=> false
#   palindrome?("")          #=> true
#
# D — I would use .reverse to compare the original str.downcase against str.downcase.reverse. 
#
# A —
#   1. Downcase string
#   2. Do a comparison of the string downcased against string downcase reversed
#   3. Consider edge casesd such as nil, returning to avoid bugs
#
# C —
def palindrome?(str)
  downcased_string = str.downcase
  downcased_string == downcased_string.reverse
end
