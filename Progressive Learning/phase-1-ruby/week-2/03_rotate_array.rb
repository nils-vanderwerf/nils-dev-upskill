# PROBLEM: Rotate Array
# Rotate an array left by n positions.
# Elements that fall off the left end wrap around to the right.
#
# P — We want to be able to move the elements in an array to the left by a given number of positions, n
# elements that fall off the left should fall around to the right
#
# E —
#   rotate([1, 2, 3, 4, 5], 2)  #=> [3, 4, 5, 1, 2]
#   rotate([1, 2, 3], 0)        #=> [1, 2, 3]
#   rotate([1, 2, 3], 3)        #=> [1, 2, 3]
#   rotate([], 2)               #=> []
#
# D — There is a method for this, .rotate
#
# A —
#   1. Take an array entered
#   2. Use the .rotate method and return the result, accounting for cases when n is 0, the length of the array, or when the array is empty
#   3. Use the argument of n in the rotate method
#
# C —
def rotate_array(arr, n)
  arr.rotate(n)
end
  
