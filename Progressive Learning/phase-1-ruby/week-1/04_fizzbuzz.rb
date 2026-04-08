# PROBLEM: FizzBuzz
# Given an integer n, return an array of strings from 1 to n where:
#   multiples of 3    => "Fizz"
#   multiples of 5    => "Buzz"
#   multiples of both => "FizzBuzz"
#   everything else   => the number as a string
#
# P —
#
# E —
#   fizzbuzz(5)  #=> ["1", "2", "Fizz", "4", "Buzz"]
#   fizzbuzz(1)  #=> ["1"]
#   fizzbuzz(15) #=> [..., "FizzBuzz"]  (15th element is "FizzBuzz")
#
# D — I would  loop over array items, then use modulus operator to do the check
# num % 3 == 0 && num % 5 == 0 array return  "Fizzbuzz"
# elsif  num % 3 array return  "Fizz"
# elsif  num % 5 array return  "Buzz"
#  elsif  num % 3 array return  "Fizzbuzz" 
# A —
#   1. Map from [1..n]
#   2. Do conditional checks if num % 3 == 0 && num % 5 == 0, return "Fizzbuzz"
#   3. else if  if num % 3 == 0, return "Fizz"
#.  4. else if  if num % 5 == 0 return "Buzz"
#   Note num will be the iterator, not n
# C —
def fizzbuzz(n)
  (1..n).map do |num|
    if num % 3 == 0 && num % 5 == 0
      "Fizzbuzz"
    elsif num % 3 == 0
      "Fizz"
    elsif num % 5 == 0
      "Buzz"
    else
      num.to_s
    end
  end
end
