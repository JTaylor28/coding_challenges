# You are given three arrays of equal size. Each array has 1 million RANDOM integer values.
# each array is already sorted in ascending order
# there are no duplicate values in any one array
# GOAL: write a method that returns an array of any/all values that are present in all three arrays.

#---------------Notes-----------------
# method takes three arguments
# method returns common numbers from all arrays as an array
#-------------------------------------

# nums_1 = [1, 2, 4, 5, 8]
# nums_2 = [2, 3, 5, 7, 9]
# nums_3 = [1, 2, 5, 8, 9]

# nums_3 = [1, 2, 4, 5, 8]
# nums_4 = [2, 3, 5, 7, 9]
# nums_5 = [1, 2, 5, 8, 9]



def find_matches_1(arr1, arr2, arr3)
  array = arr1.concat(arr2, arr3)
  x = array.tally
  matches = []
  x.each do |k, v|
    if v == 3
      matches << k
    end
  end
  matches
end

def find_matches_2(arr1, nrr2, nrr3)
  arr1.intersection(arr2, arr3)
end 

# p "method 1 result" 
# p find_matches_1(nums_1, nums_2, nums_3)

# p "method 2 result" 
# p find_matches_2(nums_3, nums_4, nums_5)